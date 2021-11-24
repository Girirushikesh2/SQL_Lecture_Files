USE Triggerex3
CREATE TABLE 
BANK_ACCOUNT(
CustomerId INT PRIMARY KEY IDENTITY,
CustomerName VARCHAR(200),
Balance DECIMAL(10,2),
Debit Float,
Credit Float
);

INSERT INTO BANK_ACCOUNT VALUES ('Himanshu',10000,10000,0);
INSERT INTO BANK_ACCOUNT VALUES ('Mike',10000,10000,0);
SELECT *FROM BANK_ACCOUNT;
SELECT *FROM Transactions;

CREATE TABLE TRANSACTIONS
(
TransactionId INT PRIMARY KEY IDENTITY(1000,23),
CustomerID INT FOREIGN KEY REFERENCES BANK_ACCOUNT(CustomerId),
TransactionTime DATE,
TransactionAmt DECIMAL(10,2),
Previous_balance DECIMAL(10,2)
);


INSERT INTO TRANSACTIONS VALUES(1,CURRENT_TIMESTAMP,1200,10000)
INSERT INTO TRANSACTIONS VALUES(2,CURRENT_TIMESTAMP,1500,10000)


-- We are just updating balance 
-- refer Alpha,Beta file (this is Alpha and Beat is for Trigger file)