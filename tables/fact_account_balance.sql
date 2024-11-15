CREATE TABLE FACT_ACCOUNT_BALANCE (
    DAY_ID DATE,
    ACCOUNT_DIM_ID INT,
    DAILY_BALANCE_AMT DECIMAL(15, 2),
    EFF_DT DATE,
    END_DT DATE,
    PRIMARY KEY (DAY_ID, ACCOUNT_DIM_ID),
    CONSTRAINT FK_ACCOUNT_BALANCE_ACCOUNT FOREIGN KEY (ACCOUNT_DIM_ID) REFERENCES DIM_ACCOUNT(ACCOUNT_DIM_ID)
);

ALTER TABLE FACT_ACCOUNT_BALANCE
DROP CONSTRAINT FK_ACCOUNT_BALANCE_ACCOUNT;

SET FOREIGN_KEY_CHECKS=0
