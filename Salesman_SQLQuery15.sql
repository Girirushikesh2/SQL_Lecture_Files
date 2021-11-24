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
City_C VARCHAR(250) NOT NULL,
Grade VARCHAR(10) NOT NULL,
SalesmanID INT FOREIGN KEY REFERENCES Salesman(SalesmanID)  
);  

INSERT INTO Customer Values
(1 , 'Rutuja','Amravati','A',1),
(2 , 'Rutu','Pune','B',2),
(3 ,'Raj','Pune','C',3),
(4 ,'Rahul','Nagpur','D',4);

SELECT *FROM Customer

SELECT First_name,Customer_name,City FROM Salesman inner join Customer on Salesman.SalesmanID=Customer.SalesmanID;

SELECT First_name,Customer_name,City,Commission FROM Salesman INNER JOIN Customer ON Salesman.SalesmanID=Customer.SalesmanID;

