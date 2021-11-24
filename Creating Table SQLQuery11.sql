CREATE TABLE Salesman(
SalesmanID INT PRIMARY KEY NOT NULL,
First_name VARCHAR(250) NOT NULL,
City VARCHAR(250) NOT NULL,
Commission INT NOT NULL
);
SELECT *FROM Salesman

INSERT INTO Salesman Values
(1 , 'Rushikesh','Amravati',111),
(2 ,'Abhay','Pune',112),
(3 ,'Dikshant','Pune',113),
(4 ,'Yash','Nagpur',114);

SELECT *FROM Salesman

CREATE TABLE Customer(
CustomerID INT NOT NULL,
Customer_name VARCHAR(250) NOT NULL,
City VARCHAR(250) NOT NULL,
Grade VARCHAR(10) NOT NULL,
Salesman ID INT  FOREIGN  KEY  NOT NULL
);