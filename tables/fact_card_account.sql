CREATE TABLE FACT_CARD_ACCOUNT (
    DAY_ID DATE,
    ACCOUNT_DIM_ID INT,
    CREDIT_CARD_SPEND_AMT DECIMAL(15, 2),
    CARD_TYPE VARCHAR(50),
    EFF_DT DATE,
    END_DT DATE,
    PRIMARY KEY (DAY_ID, ACCOUNT_DIM_ID),
    CONSTRAINT FK_CARD_ACCOUNT_ACCOUNT FOREIGN KEY (ACCOUNT_DIM_ID) REFERENCES DIM_ACCOUNT(ACCOUNT_DIM_ID)
);