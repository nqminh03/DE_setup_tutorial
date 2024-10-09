CREATE TABLE FACT_OVERDRAFT (
    DAY_ID DATE,
    ACCOUNT_DIM_ID INT,
    OVERDRAFT_SPEND_AMT DECIMAL(10, 2),
    EFF_DT DATE,
    END_DT DATE,
    PRIMARY KEY (DAY_ID, ACCOUNT_DIM_ID),
    CONSTRAINT FK_OVERDRAFT_ACCOUNT FOREIGN KEY (ACCOUNT_DIM_ID) REFERENCES DIM_ACCOUNT(ACCOUNT_DIM_ID)
);