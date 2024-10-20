-- DROP TABLE DIM_ACCOUNT;

CREATE TABLE DIM_ACCOUNT (
    ACCOUNT_DIM_ID INT PRIMARY KEY,
    CUSTOMER_ID VARCHAR(50),  -- Liên kết với CUSTOMER_ID ở bảng DIM_CUSTOMER
    ACCOUNT_ID VARCHAR(20),
    ACCOUNT_STATUS VARCHAR(20),
    CCY VARCHAR(3),
    CLOSE_DATE DATE,
    INTEREST_RATE DECIMAL(5, 2),
    OPEN_CHANNEL VARCHAR(20),
    OPEN_DATE DATE,
    PREFERED_FLAG CHAR(1),
    GL_CODE VARCHAR(20),
    BRANCH_CODE VARCHAR(50),  -- Liên kết với BRANCH_CODE ở bảng DIM_BRANCH
    HR_DIM_ID INT,
    CODE_DIM_ID INT,
    ACCOUNT_TYPE VARCHAR(50),
    PD_NAME VARCHAR(50),
    PROMOTION_ID VARCHAR(20),
    MINIMUM_BALANCE DECIMAL(15, 2),
    PAYROLL_FLAG CHAR(1),
    COOWNER_ID VARCHAR(20),
    INTEREST_SPREAD DECIMAL(5, 2),
    OD_INTEREST_RATE DECIMAL(5, 2),
    APPLICATION_ID VARCHAR(20),
    LIMIT_DIM_ID INT,
    LIMIT_AMT VARCHAR(20),
    OD_MATURITY_DATE DATE,
    EFF_DT DATE,
    END_DT DATE,
    CONSTRAINT FK_CUSTOMER_ID FOREIGN KEY (CUSTOMER_ID) REFERENCES DIM_CUSTOMER(CUSTOMER_ID),
    CONSTRAINT FK_BRANCH_CODE FOREIGN KEY (BRANCH_CODE) REFERENCES DIM_BRANCH(BRANCH_CODE)
);

ALTER TABLE dim_account MODIFY LIMIT_AMT VARCHAR(20);

SHOW VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = 'ON';


