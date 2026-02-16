use day5sqltask1;
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
select * from orders;

create table customers(customerId int primary key auto_increment,customerName varchar(50),city varchar(50));
create table customers(customerId int ,customerName varchar(50),city varchar(50),constraint ck_1 primary key auto_increment(custoomerId));
create table customers(customerId int, customerName varchar(50),city varchar(50),constraint ck_1 primary key auto_increment(customerId,customerName));


create table products (productId  int primary key auto_increment,productname varchar(50),price decimal(10,2));
create table products (productId int,productname varchar(50),price decimal(10,2),constraint ck_2 primary key auto_increment(productId));
create table products (productId int,productname varchar(50),price decimal(10,2),constraint ck_2 primary key auto_increment(productId,productname));


create table orders(orderid int primary key auto_increment,customerid int,productid int,orderdate date,quantity int,
foreign key(customerid) references customers(customerid),
foreign key (productid) references products(productid));
create table orders(orderid int,customerid int,productid int,orderdate date,quantity int,constraint ck_3 primary key auto_increment(orderid),
constraint ck_31 foreign key(customerid) references customers(customerid),constraint ck_32 foreign key(productid) references products(productid));



create table customers(customerId int unique auto_increment,customerName varchar(50),city varchar(50));
create table customers(customerId int ,customerName varchar(50),city varchar(50),constraint ck_1 unique auto_increment(custoomerId));
create table customers(customerId int, customerName varchar(50),city varchar(50),constraint ck_1 unique auto_increment(customerId,customerName));


create table products (productId  int unique auto_increment,productname varchar(50),price decimal(10,2));
create table products (productId int,productname varchar(50),price decimal(10,2),constraint ck_2 unique auto_increment(productId));
create table products (productId int,productname varchar(50),price decimal(10,2),constraint ck_2 unique key auto_increment(productId,productname));


create table orders(orderid int unique auto_increment,customerid int,productid int,orderdate date,quantity int,
foreign key(customerid) references customers(customerid),
foreign key (productid) references products(productid));
create table orders(orderid int,customerid int,productid int,orderdate date,quantity int,constraint ck_3 unique auto_increment(orderid),
constraint ck_31 foreign key(customerid) references customers(customerid),constraint ck_32 foreign key(productid) references products(productid));



alter table customers drop primary key;

alter table products drop index productid;

alter table orders drop foreign key productid;
