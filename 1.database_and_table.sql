# Create the database as supply_chain
CREATE DATABASE supply_chain;

# use database supply_chain
USE supply_chain;


# create table Customer along with its indexes
CREATE TABLE Customer (
Id INT,
FirstName VARCHAR(40),
LastName VARCHAR(40),
City VARCHAR(40),
Country VARCHAR(40),
Phone VARCHAR(20),
CONSTRAINT PK_CUSTOMER PRIMARY KEY(ID));

CREATE INDEX IndexCustomerName ON Customer(
LastName ASC,
FirstName ASC);

# Create table Orders along with its indexes
CREATE TABLE Orders(
Id INT,
OrderDate VARCHAR(40) NOT NULL ,
CustomerId INT NOT NULL,
TotalAmount DECIMAL(12,2) NULL DEFAULT 0,
CONSTRAINT  PK_ORDER PRIMARY KEY(Id)
);

CREATE INDEX IndexOrderCustomerId ON Orders (
CustomerId ASC);

CREATE INDEX IndexOrderOrderDate ON Orders (
OrderDate ASC);


# create table OrderItem along with its indexes
CREATE TABLE OrderItem (
Id INT,
OrderId INT NOT NULL, 
ProductId INT NOT NULL,
UnitPrice  DECIMAL(12,2) NOT NULL DEFAULT 0,
Quantity INT NOT NULL DEFAULT 1,
CONSTRAINT PK_ORDERITEM PRIMARY KEY(Id)
);

CREATE INDEX IndexOrderItemOrderId ON OrderItem (OrderId ASC);
CREATE INDEX IndexOrderItemProductId ON OrderItem (ProductId ASC);


# Create table Product along with its indexes
CREATE TABLE Product (
Id INT,
ProductName VARCHAR(50) NOT NULL,
SupplierId INT NOT NULL,
UnitPrice DECIMAL(12,2) NULL DEFAULT 0,
Package VARCHAR(30) NULL,
IsDiscontinued BIT NOT NULL DEFAULT 0,
CONSTRAINT PK_PRODUCT PRIMARY KEY (Id)
);
CREATE INDEX IndexProductSupplierId ON Product (
SupplierId ASC);

CREATE INDEX IndexProductProductName ON Product (
ProductName ASC);

# create table Supplier along with its index 
CREATE TABLE Supplier (
Id INT,
CompanyName VARCHAR(40) NOT NULL,
ContactName VARCHAR(50) NULL,
ContactTitle VARCHAR(40) NULL,
City VARCHAR(40) NULL,
Country VARCHAR(40) NULL,
Phone VARCHAR(30) NULL,
Fax VARCHAR(30) NULL,
CONSTRAINT PK_SUPPLIER PRIMARY KEY(Id)
);

CREATE INDEX IndexSupplierName ON Supplier (CompanyName ASC);

CREATE INDEX IndexSupplierCountry ON Supplier (Country ASC);