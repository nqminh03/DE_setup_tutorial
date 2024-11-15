import org.apache.commons.io.IOUtils
import groovy.json.JsonSlurper
import groovy.json.JsonOutput

// Initialize FlowFile
def flowFile = session.get()
if (!flowFile) return

session.read(flowFile, { inputStream ->
    try {
        // Read the FlowFile content as a string
        def inputContent = IOUtils.toString(inputStream, 'UTF-8')
        
        // Parse JSON input data
        def parser = new JsonSlurper()
        def data = parser.parseText(inputContent)
        
        // If the data is a list, handle each item individually
        if (data instanceof List) {
            data.each { item ->
                // Check if item is a Map before processing
                if (item instanceof Map) {
                    calculateTotalSpend(item)
                }
            }
        } else if (data instanceof Map) {
            // If data is a single object (Map), process it directly
            calculateTotalSpend(data)
        } else {
            throw new Exception("Unexpected JSON format. Data must be a JSON object or an array of objects.")
        }

        // Convert the modified data back to JSON format
        def outputContent = JsonOutput.toJson(data)

        // Write the updated content to the FlowFile
        flowFile = session.write(flowFile, { outputStream ->
            outputStream.write(outputContent.getBytes('UTF-8'))
        } as OutputStreamCallback)

        // Set attributes or other processing if needed
        flowFile = session.putAttribute(flowFile, 'totalSpendCalculated', 'true')
        
        // Transfer FlowFile to success relationship
        session.transfer(flowFile, REL_SUCCESS)

    } catch (Exception e) {
        log.error("Error processing FlowFile", e)
        session.transfer(flowFile, REL_FAILURE)
    }
} as InputStreamCallback)

// Function to calculate TOTAL_SPEND
void calculateTotalSpend(Map item) {
    // Check if keys exist before accessing
    if (item.containsKey('TOTAL_CREDIT_CARD_SPEND') && 
        item.containsKey('TOTAL_INSURANCE_POLICY') && 
        item.containsKey('TOTAL_OVERDRAFT_SPEND')) {
        
        // Calculate TOTAL_SPEND (excluding AVG_DAILY_BALANCE)
        def totalSpend = (item.TOTAL_CREDIT_CARD_SPEND ?: 0) + 
                         (item.TOTAL_INSURANCE_POLICY ?: 0) + 
                         (item.TOTAL_OVERDRAFT_SPEND ?: 0)
        
        // Update the data map with the new TOTAL_SPEND
        item.TOTAL_SPEND = totalSpend
    }
}
