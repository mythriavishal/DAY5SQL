use day5task2;
CREATE TABLE Customers (CustomerID INT PRIMARY KEY,CustomerName VARCHAR(50),City VARCHAR(50));
CREATE TABLE Products (ProductID INT PRIMARY KEY,ProductName VARCHAR(50),Price DECIMAL(10, 2));
CREATE TABLE Orders (OrderID INT PRIMARY KEY,CustomerID INT,ProductID INT,OrderDate DATE,Quantity INT,
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
FOREIGN KEY (ProductID) REFERENCES Products(ProductID));

INSERT INTO Customers VALUES (1, 'Alice', 'New York'), (2, 'Bob', 'London'), (3, 'Charlie', 'Paris'), (4, 'David', 'Berlin');
INSERT INTO Products VALUES (101, 'Laptop', 1200.00), (102, 'Mouse', 25.00), (103, 'Keyboard', 50.00);
INSERT INTO Orders VALUES (1, 1, 101, '2023-01-01', 1), (2, 2, 102, '2023-01-02', 2), (3, 1, 103, '2023-01-03', 1), (4, NULL, 101, '2023-01-04', 1);

select * from Customers;
select * from Products;
select * from Orders;

select c.CustomerName , o.OrderID from customers c join orders o on c.customerID=o.CustomerID;

select c.CustomerName ,o.OrderID from customers c left join orders o on c.customerID=o.customerID;

select p.productname,o.orderid from products p left join orders o on p.ProductID=o.ProductID;

select c.customername,p.productname,o.orderdate from orders o join customers c on o.customerid=c.customerid join products p on o.productid=p.productid;

select c.customername, o.orderdate, o.orderid from orders o join customers c on o.customerid=c.customerid join products p on o.productid=p.productid where p.productname="laptop";

select c.customername,c.customerid,sum(p.price * o.quantity) as totalMONEY from orders o join customers c on o.customerid=c.customerid join products p on o.productid=p.productid group by c.customername,c.customerid;

select p.productname from orders o left join products p on o.productid = p.productid left join customers c on o.customerid=c.customerid where c.customerid=null;

select c.customername,p.productname from customers c cross join products p;

