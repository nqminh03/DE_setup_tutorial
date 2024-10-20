-- DROP TABLE dim_branch;

CREATE TABLE DIM_BRANCH (
    BRANCH_DIM_ID INT PRIMARY KEY,
    BRANCH_CODE VARCHAR(50) NOT NULL,
    BRANCH_NAME VARCHAR(50) NOT NULL,
    BRANCH_CODE_PARENT VARCHAR(10),
    ADDRESS_LOCAL VARCHAR(100),
    ADDRESS_CITY VARCHAR(50),
    REGION_CODE VARCHAR(10),
    REGION_NAME VARCHAR(50),
    BRANCH_CODE_TEXT VARCHAR(50),
    BRANCH_STATUS VARCHAR(10),
    EFF_DT DATE,
    END_DT DATE
);

CREATE UNIQUE INDEX idx_branch_code ON DIM_BRANCH (BRANCH_CODE);
