CREATE TABLE Product (
    Product_id VARCHAR2(20) PRIMARY KEY,
	Product_name VARCHAR2(20) NOT NULL,
	Price NUMBER CHECK (NUMBER > 0),
);
CREATE TABLE Customer (
    Customer_id VARCHAR2(20) PRIMARY KEY,
	Customer_name VARCHAR2(20) NOT NULL,
	Customer_tel NUMBER ,
);
CREATE TABLE Orders (
   FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id),
	Quantity NUMBER ,
    Total_amount NUMBER,
);
ALTER TABLE Product ADD Category VARCHAR2(20);
ALTER TABLE Orders ADD Order_Date DATE DEFAULT SYSDATE; 