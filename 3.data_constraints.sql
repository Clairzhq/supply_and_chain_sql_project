# use the database supply_chain
USE supply_chain;

# Establishing relationship between the tables using primary and foriegn key
ALTER TABLE Product ADD FOREIGN KEY (SupplierId) REFERENCES Supplier(Id);
ALTER TABLE Orders ADD FOREIGN KEY (CustomerId) REFERENCES Customer(Id);
ALTER TABLE OrderItem ADD FOREIGN KEY (ProductId) REFERENCES Product(Id);
ALTER TABLE OrderItem ADD FOREIGN KEY (OrderId) REFERENCES Orders(Id);


# Validating the data in all the tables
SELECT * FROM Customer;
SELECT * FROM Orders;
SELECT * FROM Supplier;
SELECT * FROM Product;
SELECT * FROM OrderItem;