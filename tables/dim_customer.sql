-- DROP TABLE DIM_CUSTOMER;

CREATE TABLE DIM_CUSTOMER (
    CUSTOMER_DIM_ID INT PRIMARY KEY,
    CUSTOMER_ID VARCHAR(50),
    CUSTOMER_NAME VARCHAR(100),
    CUSTOMER_EMAIL VARCHAR(100),
    SEGMENT_CODE VARCHAR(50),
    SEGMENT_DESC VARCHAR(255),
    OPEN_DATE DATE,
    CLOSE_DATE DATE,
    BRANCH_CODE VARCHAR(50),  -- Liên kết với BRANCH_CODE ở bảng DIM_BRANCH
    STAFF_ID VARCHAR(50),
    CUSTOMER_STATUS VARCHAR(50),
    CUSTOMER_STATUS_DESC VARCHAR(50),
    CAMP_ID VARCHAR(50),
    REGION VARCHAR(50),
    PROVINCE VARCHAR(100),
    GENDER VARCHAR(10),
    AGE INT,
    ANNUAL_SALARY DECIMAL(15, 2),
    AVG_CASA_BALANCE_YEARLY DECIMAL(15, 2),
    AVG_DEPOSIT_BALANCE_YEARLY DECIMAL(15, 2),
    OVERDRAFT_LIMIT DECIMAL(15, 2),
    CREDIT_CARD_LIMIT DECIMAL(15, 2),
    EFF_DT DATE,
    END_DT DATE,
    CONSTRAINT FK_BRANCH_CODE_CUSTOMER FOREIGN KEY (BRANCH_CODE) REFERENCES DIM_BRANCH(BRANCH_CODE)
);

CREATE UNIQUE INDEX idx_customer_id ON DIM_CUSTOMER (CUSTOMER_ID);

