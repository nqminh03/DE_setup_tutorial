CREATE TABLE fact_customer_spend (
    CUSTOMER_ID VARCHAR(50),
    BRANCH_CODE VARCHAR(50),
    AVG_DAILY_BALANCE DECIMAL(15, 2),         -- Trung bình số dư hàng ngày
    TOTAL_CREDIT_CARD_SPEND DECIMAL(15, 2),   -- Tổng chi tiêu qua thẻ tín dụng
    TOTAL_INSURANCE_POLICY DECIMAL(15, 2),    -- Tổng số dư bảo hiểm
    TOTAL_OVERDRAFT_SPEND DECIMAL(15, 2),     -- Tổng chi tiêu thấu chi
    TOTAL_SPEND DECIMAL(15, 2),               -- Tổng chi tiêu tài chính
    AGE INT,                       			  -- Tuổi của khách hàng
    ANNUAL_SALARY DECIMAL(15, 2),             -- Thu nhập hàng năm của khách hàng
    GENDER VARCHAR(10),                       -- Giới tính khách hàng
    ACCOUNT_STATUS VARCHAR(20),               -- Tình trạng tài khoản
    ACCOUNT_TYPE VARCHAR(50),                 -- Loại tài khoản
    PRIMARY KEY (CUSTOMER_ID)
);
