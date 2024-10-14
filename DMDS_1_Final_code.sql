/*==============================================================*/
/* Balamir Demirkan Belül                         */
/* Created on:     5/11/2024 22:20:34                          */
/*==============================================================*/

CREATE TABLE CustomerOrders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    DateID INT,
    ProductID INT,
    SalespersonID INT,
    OrderAmount DECIMAL(10, 2),
    Quantity INT,
    Discount DECIMAL(5, 2)
);
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender CHAR(1),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255),
    RegistrationDate DATE,
    LastPurchaseDate DATE
);
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(100),
    Price DECIMAL(10, 2),
    StockQuantity INT,
    Supplier VARCHAR(100)
);
CREATE TABLE Date_Co (
    DateID INT PRIMARY KEY,
    Date_Time DATE,
    DayOfWeek VARCHAR(10),
    Month VARCHAR(10),
    Quarter VARCHAR(10),
    Year INT,
    HolidayIndicator INT
);
CREATE TABLE Salesperson (
    SalespersonID INT PRIMARY KEY,
    SalespersonName VARCHAR(100),
    Position VARCHAR(100),
    SalespersonEmail VARCHAR(100),
    SalespersonPhoneNumber VARCHAR(20)
);
CREATE TABLE ProductCategory (
    ProductCategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100),
    CategoryDescription VARCHAR(250),
    AveragePriceRange VARCHAR(50),
    CategoryType VARCHAR(50)
);
ALTER TABLE Product
ADD ProductCategoryID INT;

ALTER TABLE Product
ADD CONSTRAINT FK_Product_ProductCategory
FOREIGN KEY (ProductCategoryID)
REFERENCES ProductCategory(ProductCategoryID);

CREATE TABLE CustomerDetails (
    CustomerID INT PRIMARY KEY,
    MaritalStatus VARCHAR(10),
    IncomeLevel VARCHAR(50),
    CustomerType VARCHAR(20),
    LoyaltyStatus VARCHAR(20)
);
ALTER TABLE CustomerDetails
ADD CONSTRAINT FK_CustomerDetails_Customer
FOREIGN KEY (CustomerID)
REFERENCES Customer(CustomerID);




	
	INSERT INTO ProductCategory (ProductCategoryID, CategoryName, CategoryDescription, AveragePriceRange, CategoryType)
VALUES (1, 'Electronics', 'Devices and gadgets', '$200 - $1000', 'Consumer Goods');

INSERT INTO ProductCategory (ProductCategoryID, CategoryName, CategoryDescription, AveragePriceRange, CategoryType)
VALUES (2, 'Clothing', 'Apparel and accessories', '$10 - $300', 'Fashion');

INSERT INTO ProductCategory (ProductCategoryID, CategoryName, CategoryDescription, AveragePriceRange, CategoryType)
VALUES (3, 'Home Appliances', 'Household electrical machines', '$50 - $2000', 'Durables');

INSERT INTO ProductCategory (ProductCategoryID, CategoryName, CategoryDescription, AveragePriceRange, CategoryType)
VALUES (4, 'Books', 'Printed and digital reading materials', '$5 - $50', 'Education');

INSERT INTO ProductCategory (ProductCategoryID, CategoryName, CategoryDescription, AveragePriceRange, CategoryType)
VALUES (5, 'Toys', 'Play items for children', '$10 - $200' , 'Goods');

INSERT INTO ProductCategory (ProductCategoryID, CategoryName, CategoryDescription, AveragePriceRange, CategoryType)
VALUES (6, 'Furniture', 'Home and office furnishings', '$100 - $3000', 'Durables');

INSERT INTO ProductCategory (ProductCategoryID, CategoryName, CategoryDescription, AveragePriceRange, CategoryType)
VALUES (7, 'Beauty', 'Cosmetics and skincare products', '$5 - $200', 'Personal Care');

INSERT INTO ProductCategory (ProductCategoryID, CategoryName, CategoryDescription, AveragePriceRange, CategoryType)
VALUES (8, 'Sports', 'Equipment and apparel for sports', '$10 - $1000', 'Recreation');

INSERT INTO ProductCategory (ProductCategoryID, CategoryName, CategoryDescription, AveragePriceRange, CategoryType)
VALUES (9, 'Jewelry', 'Ornaments and accessories', '$20 - $5000', 'Luxury Goods');

INSERT INTO ProductCategory (ProductCategoryID, CategoryName, CategoryDescription, AveragePriceRange, CategoryType)
VALUES (10, 'Groceries', 'Daily food items', '$1 - $200', 'Food & Beverage');




INSERT INTO Product (ProductID, ProductName, Category, Price, StockQuantity, Supplier, ProductCategoryID)
VALUES (1, 'Smartphone', 'Electronics', 599.99, 100, 'TechSupplier Inc.', 1);

INSERT INTO Product (ProductID, ProductName, Category, Price, StockQuantity, Supplier, ProductCategoryID)
VALUES (2, 'Laptop', 'Electronics', 899.99, 50, 'TechSupplier Inc.', 1);

INSERT INTO Product (ProductID, ProductName, Category, Price, StockQuantity, Supplier, ProductCategoryID)
VALUES (3, 'T-Shirt', 'Clothing', 19.99, 200, 'FashionStore Ltd.', 2);

INSERT INTO Product (ProductID, ProductName, Category, Price, StockQuantity, Supplier, ProductCategoryID)
VALUES (4, 'Refrigerator', 'Home Appliances', 699.99, 25, 'HomeEquip Co.', 3);

INSERT INTO Product (ProductID, ProductName, Category, Price, StockQuantity, Supplier, ProductCategoryID)
VALUES (5, 'Harry Potter Book', 'Books', 25.00, 150, 'BookStore Inc.', 4);

INSERT INTO Product (ProductID, ProductName, Category, Price, StockQuantity, Supplier, ProductCategoryID)
VALUES (6, 'Action Figure', 'Toys', 14.99, 300, 'Toyland Co.', 5);

INSERT INTO Product (ProductID, ProductName, Category, Price, StockQuantity, Supplier, ProductCategoryID)
VALUES (7, 'Office Chair', 'Furniture', 199.99, 40, 'HomeFurniture Co.', 6);

INSERT INTO Product (ProductID, ProductName, Category, Price, StockQuantity, Supplier, ProductCategoryID)
VALUES (8, 'Lipstick', 'Beauty', 15.00, 200, 'BeautyEssentials Ltd.', 7);

INSERT INTO Product (ProductID, ProductName, Category, Price, StockQuantity, Supplier, ProductCategoryID)
VALUES (9, 'Soccer Ball', 'Sports', 29.99, 150, 'Sporty Co.', 8);

INSERT INTO Product (ProductID, ProductName, Category, Price, StockQuantity, Supplier, ProductCategoryID)
VALUES (10, 'Gold Necklace', 'Jewelry', 299.99, 20, 'LuxuryJewels Inc.', 9);





INSERT INTO Customer (CustomerID, FirstName, LastName, DateOfBirth, Gender, Email, PhoneNumber, Address, RegistrationDate, LastPurchaseDate)
VALUES (1, 'John', 'Doe', TO_DATE('1985-03-15', 'YYYY-MM-DD'), 'M', 'john.doe@example.com', '555-1234', '123 Elm St, Springfield', TO_DATE('2020-01-10', 'YYYY-MM-DD'), TO_DATE('2024-09-25', 'YYYY-MM-DD'));

INSERT INTO Customer (CustomerID, FirstName, LastName, DateOfBirth, Gender, Email, PhoneNumber, Address, RegistrationDate, LastPurchaseDate)
VALUES (2, 'Jane', 'Smith', TO_DATE('1990-07-22', 'YYYY-MM-DD'), 'F', 'jane.smith@example.com', '555-5678', '456 Oak St, Springfield', TO_DATE('2019-05-22', 'YYYY-MM-DD'), TO_DATE('2024-09-18', 'YYYY-MM-DD'));

INSERT INTO Customer (CustomerID, FirstName, LastName, DateOfBirth, Gender, Email, PhoneNumber, Address, RegistrationDate, LastPurchaseDate)
VALUES (3, 'Emily', 'Johnson', TO_DATE('1992-11-10', 'YYYY-MM-DD'), 'F', 'emily.johnson@example.com', '555-8765', '789 Pine St, Springfield', TO_DATE('2021-03-30', 'YYYY-MM-DD'), TO_DATE('2024-09-20', 'YYYY-MM-DD'));

INSERT INTO Customer (CustomerID, FirstName, LastName, DateOfBirth, Gender, Email, PhoneNumber, Address, RegistrationDate, LastPurchaseDate)
VALUES (4, 'Michael', 'Brown', TO_DATE('1988-05-05', 'YYYY-MM-DD'), 'M', 'michael.brown@example.com', '555-4321', '321 Maple St, Springfield', TO_DATE('2018-07-15', 'YYYY-MM-DD'), TO_DATE('2024-09-22', 'YYYY-MM-DD'));

INSERT INTO Customer (CustomerID, FirstName, LastName, DateOfBirth, Gender, Email, PhoneNumber, Address, RegistrationDate, LastPurchaseDate)
VALUES (5, 'Jessica', 'Davis', TO_DATE('1995-02-28', 'YYYY-MM-DD'), 'F', 'jessica.davis@example.com', '555-2345', '654 Cedar St, Springfield', TO_DATE('2020-08-14', 'YYYY-MM-DD'), TO_DATE('2024-09-15', 'YYYY-MM-DD'));

INSERT INTO Customer (CustomerID, FirstName, LastName, DateOfBirth, Gender, Email, PhoneNumber, Address, RegistrationDate, LastPurchaseDate)
VALUES (6, 'David', 'Martinez', TO_DATE('1983-12-12', 'YYYY-MM-DD'), 'M', 'david.martinez@example.com', '555-6789', '987 Birch St, Springfield', TO_DATE('2017-02-10', 'YYYY-MM-DD'), TO_DATE('2024-09-17', 'YYYY-MM-DD'));

INSERT INTO Customer (CustomerID, FirstName, LastName, DateOfBirth, Gender, Email, PhoneNumber, Address, RegistrationDate, LastPurchaseDate)
VALUES (7, 'Sarah', 'Wilson', TO_DATE('1990-09-22', 'YYYY-MM-DD'), 'F', 'sarah.wilson@example.com', '555-3456', '123 Elm St, Springfield', TO_DATE('2019-11-11', 'YYYY-MM-DD'), TO_DATE('2024-09-24', 'YYYY-MM-DD'));

INSERT INTO Customer (CustomerID, FirstName, LastName, DateOfBirth, Gender, Email, PhoneNumber, Address, RegistrationDate, LastPurchaseDate)
VALUES (8, 'James', 'Garcia', TO_DATE('1996-01-18', 'YYYY-MM-DD'), 'M', 'james.garcia@example.com', '555-9876', '456 Oak St, Springfield', TO_DATE('2022-06-01', 'YYYY-MM-DD'), TO_DATE('2024-09-12', 'YYYY-MM-DD'));

INSERT INTO Customer (CustomerID, FirstName, LastName, DateOfBirth, Gender, Email, PhoneNumber, Address, RegistrationDate, LastPurchaseDate)
VALUES (9, 'Linda', 'Hernandez', TO_DATE('1980-04-30', 'YYYY-MM-DD'), 'F', 'linda.hernandez@example.com', '555-4567', '789 Pine St, Springfield', TO_DATE('2015-10-20', 'YYYY-MM-DD'), TO_DATE('2024-09-23', 'YYYY-MM-DD'));

INSERT INTO Customer (CustomerID, FirstName, LastName, DateOfBirth, Gender, Email, PhoneNumber, Address, RegistrationDate, LastPurchaseDate)
VALUES (10, 'Robert', 'Lopez', TO_DATE('1978-08-08', 'YYYY-MM-DD'), 'M', 'robert.lopez@example.com', '555-1111', '321 Maple St, Springfield', TO_DATE('2020-01-05', 'YYYY-MM-DD'), TO_DATE('2024-09-30', 'YYYY-MM-DD'));




INSERT INTO CustomerDetails (CustomerID, MaritalStatus, IncomeLevel, CustomerType, LoyaltyStatus)
VALUES (1, 'Married', 'High', 'Regular', 'Gold');

INSERT INTO CustomerDetails (CustomerID, MaritalStatus, IncomeLevel, CustomerType, LoyaltyStatus)
VALUES (2, 'Single', 'Medium', 'New', 'Silver');

INSERT INTO CustomerDetails (CustomerID, MaritalStatus, IncomeLevel, CustomerType, LoyaltyStatus)
VALUES (3, 'Single', 'Low', 'Regular', 'Bronze');

INSERT INTO CustomerDetails (CustomerID, MaritalStatus, IncomeLevel, CustomerType, LoyaltyStatus)
VALUES (4, 'Married', 'High', 'Regular', 'Gold');

INSERT INTO CustomerDetails (CustomerID, MaritalStatus, IncomeLevel, CustomerType, LoyaltyStatus)
VALUES (5, 'Single', 'Medium', 'New', 'Silver');

INSERT INTO CustomerDetails (CustomerID, MaritalStatus, IncomeLevel, CustomerType, LoyaltyStatus)
VALUES (6, 'Divorced', 'Medium', 'Regular', 'Silver');

INSERT INTO CustomerDetails (CustomerID, MaritalStatus, IncomeLevel, CustomerType, LoyaltyStatus)
VALUES (7, 'Married', 'High', 'New', 'Gold');

INSERT INTO CustomerDetails (CustomerID, MaritalStatus, IncomeLevel, CustomerType, LoyaltyStatus)
VALUES (8, 'Single', 'Low', 'Regular', 'Bronze');

INSERT INTO CustomerDetails (CustomerID, MaritalStatus, IncomeLevel, CustomerType, LoyaltyStatus)
VALUES (9, 'Married', 'Medium', 'Regular', 'Silver');

INSERT INTO CustomerDetails (CustomerID, MaritalStatus, IncomeLevel, CustomerType, LoyaltyStatus)
VALUES (10, 'Single', 'High', 'New', 'Gold');




INSERT INTO Date_Co (DateID, Date_Time, DayOfWeek, Month, Quarter, Year, HolidayIndicator)
VALUES (1, TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'Tuesday', 'January', 'Q1', 2024, 1);

INSERT INTO Date_Co (DateID, Date_Time, DayOfWeek, Month, Quarter, Year, HolidayIndicator)
VALUES (2, TO_DATE('2024-02-14', 'YYYY-MM-DD'), 'Wednesday', 'February', 'Q1', 2024, 0);

INSERT INTO Date_Co (DateID, Date_Time, DayOfWeek, Month, Quarter, Year, HolidayIndicator)
VALUES (3, TO_DATE('2024-03-17', 'YYYY-MM-DD'), 'Sunday', 'March', 'Q1', 2024, 0);

INSERT INTO Date_Co (DateID, Date_Time, DayOfWeek, Month, Quarter, Year, HolidayIndicator)
VALUES (4, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 'Monday', 'April', 'Q2', 2024, 0);

INSERT INTO Date_Co (DateID, Date_Time, DayOfWeek, Month, Quarter, Year, HolidayIndicator)
VALUES (5, TO_DATE('2024-05-25', 'YYYY-MM-DD'), 'Saturday', 'May', 'Q2', 2024, 0);

INSERT INTO Date_Co (DateID, Date_Time, DayOfWeek, Month, Quarter, Year, HolidayIndicator)
VALUES (6, TO_DATE('2024-06-30', 'YYYY-MM-DD'), 'Sunday', 'June', 'Q2', 2024, 0);

INSERT INTO Date_Co (DateID, Date_Time, DayOfWeek, Month, Quarter, Year, HolidayIndicator)
VALUES (7, TO_DATE('2024-07-04', 'YYYY-MM-DD'), 'Thursday', 'July', 'Q3', 2024, 1);

INSERT INTO Date_Co (DateID, Date_Time, DayOfWeek, Month, Quarter, Year, HolidayIndicator)
VALUES (8, TO_DATE('2024-08-15', 'YYYY-MM-DD'), 'Thursday', 'August', 'Q3', 2024, 0);

INSERT INTO Date_Co (DateID, Date_Time, DayOfWeek, Month, Quarter, Year, HolidayIndicator)
VALUES (9, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Sunday', 'September', 'Q3', 2024, 0);

INSERT INTO Date_Co (DateID, Date_Time, DayOfWeek, Month, Quarter, Year, HolidayIndicator)
VALUES (10, TO_DATE('2024-10-10', 'YYYY-MM-DD'), 'Thursday', 'October', 'Q4', 2024, 0);







INSERT INTO Salesperson (SalespersonID, SalespersonName, Position, SalespersonEmail, SalespersonPhoneNumber)
VALUES (1, 'Alice Johnson', 'Sales Manager', 'alice.johnson@example.com', '555-1010');

INSERT INTO Salesperson (SalespersonID, SalespersonName, Position, SalespersonEmail, SalespersonPhoneNumber)
VALUES (2, 'Brian Smith', 'Sales Associate', 'brian.smith@example.com', '555-2020');

INSERT INTO Salesperson (SalespersonID, SalespersonName, Position, SalespersonEmail, SalespersonPhoneNumber)
VALUES (3, 'Carol White', 'Sales Executive', 'carol.white@example.com', '555-3030');

INSERT INTO Salesperson (SalespersonID, SalespersonName, Position, SalespersonEmail, SalespersonPhoneNumber)
VALUES (4, 'David Lee', 'Sales Coordinator', 'david.lee@example.com', '555-4040');

INSERT INTO Salesperson (SalespersonID, SalespersonName, Position, SalespersonEmail, SalespersonPhoneNumber)
VALUES (5, 'Eva Martinez', 'Senior Sales Consultant', 'eva.martinez@example.com', '555-5050');

INSERT INTO Salesperson (SalespersonID, SalespersonName, Position, SalespersonEmail, SalespersonPhoneNumber)
VALUES (6, 'Frank Garcia', 'Sales Representative', 'frank.garcia@example.com', '555-6060');

INSERT INTO Salesperson (SalespersonID, SalespersonName, Position, SalespersonEmail, SalespersonPhoneNumber)
VALUES (7, 'Grace Davis', 'Account Manager', 'grace.davis@example.com', '555-7070');

INSERT INTO Salesperson (SalespersonID, SalespersonName, Position, SalespersonEmail, SalespersonPhoneNumber)
VALUES (8, 'Henry Thompson', 'Sales Analyst', 'henry.thompson@example.com', '555-8080');

INSERT INTO Salesperson (SalespersonID, SalespersonName, Position, SalespersonEmail, SalespersonPhoneNumber)
VALUES (9, 'Irene Wilson', 'Customer Service Representative', 'irene.wilson@example.com', '555-9090');

INSERT INTO Salesperson (SalespersonID, SalespersonName, Position, SalespersonEmail, SalespersonPhoneNumber)
VALUES (10, 'James Brown', 'Regional Sales Director', 'james.brown@example.com', '555-0000');




INSERT INTO CustomerOrders (OrderID, CustomerID, DateID, ProductID, SalespersonID, OrderAmount, Quantity, Discount) VALUES (1, 1, 20240101, 1, 1, 100.00, 2, 5);
INSERT INTO CustomerOrders (OrderID, CustomerID, DateID, ProductID, SalespersonID, OrderAmount, Quantity, Discount) VALUES (2, 2, 20240102, 2, 1, 150.00, 1, 10);
INSERT INTO CustomerOrders (OrderID, CustomerID, DateID, ProductID, SalespersonID, OrderAmount, Quantity, Discount) VALUES (3, 3, 20240103, 3, 2, 200.00, 3, 0);
INSERT INTO CustomerOrders (OrderID, CustomerID, DateID, ProductID, SalespersonID, OrderAmount, Quantity, Discount) VALUES (4, 4, 20240104, 4, 2, 250.00, 4, 15);
INSERT INTO CustomerOrders (OrderID, CustomerID, DateID, ProductID, SalespersonID, OrderAmount, Quantity, Discount) VALUES (5, 5, 20240105, 5, 1, 300.00, 5, 5);
INSERT INTO CustomerOrders (OrderID, CustomerID, DateID, ProductID, SalespersonID, OrderAmount, Quantity, Discount) VALUES (6, 1, 20240106, 6, 3, 125.00, 2, 0);
INSERT INTO CustomerOrders (OrderID, CustomerID, DateID, ProductID, SalespersonID, OrderAmount, Quantity, Discount) VALUES (7, 2, 20240107, 7, 3, 175.00, 3, 10);
INSERT INTO CustomerOrders (OrderID, CustomerID, DateID, ProductID, SalespersonID, OrderAmount, Quantity, Discount) VALUES (8, 3, 20240108, 1, 4, 225.00, 4, 0);
INSERT INTO CustomerOrders (OrderID, CustomerID, DateID, ProductID, SalespersonID, OrderAmount, Quantity, Discount) VALUES (9, 4, 20240109, 2, 4, 275.00, 5, 20);
INSERT INTO CustomerOrders (OrderID, CustomerID, DateID, ProductID, SalespersonID, OrderAmount, Quantity, Discount) VALUES (10, 5, 20240110, 3, 2, 325.00, 1, 10);
INSERT INTO CustomerOrders (OrderID, CustomerID, DateID, ProductID, SalespersonID, OrderAmount, Quantity, Discount) VALUES (11, 1, 20240111, 4, 1, 400.00, 3, 5);
INSERT INTO CustomerOrders (OrderID, CustomerID, DateID, ProductID, SalespersonID, OrderAmount, Quantity, Discount) VALUES (12, 2, 20240112, 5, 1, 450.00, 2, 0);
INSERT INTO CustomerOrders (OrderID, CustomerID, DateID, ProductID, SalespersonID, OrderAmount, Quantity, Discount) VALUES (13, 3, 20240113, 6, 3, 500.00, 4, 10);
INSERT INTO CustomerOrders (OrderID, CustomerID, DateID, ProductID, SalespersonID, OrderAmount, Quantity, Discount) VALUES (14, 4, 20240114, 7, 3, 550.00, 1, 15);
INSERT INTO CustomerOrders (OrderID, CustomerID, DateID, ProductID, SalespersonID, OrderAmount, Quantity, Discount) VALUES (15, 5, 20240115, 1, 2, 600.00, 5, 20);
INSERT INTO CustomerOrders (OrderID, CustomerID, DateID, ProductID, SalespersonID, OrderAmount, Quantity, Discount) VALUES (16, 1, 20240116, 2, 2, 650.00, 3, 0);
INSERT INTO CustomerOrders (OrderID, CustomerID, DateID, ProductID, SalespersonID, OrderAmount, Quantity, Discount) VALUES (17, 2, 20240117, 3, 4, 700.00, 4, 5);
INSERT INTO CustomerOrders (OrderID, CustomerID, DateID, ProductID, SalespersonID, OrderAmount, Quantity, Discount) VALUES (18, 3, 20240118, 4, 4, 750.00, 2, 10);
INSERT INTO CustomerOrders (OrderID, CustomerID, DateID, ProductID, SalespersonID, OrderAmount, Quantity, Discount) VALUES (19, 4, 20240119, 5, 1, 800.00, 1, 0);
INSERT INTO CustomerOrders (OrderID, CustomerID, DateID, ProductID, SalespersonID, OrderAmount, Quantity, Discount) VALUES (20, 5, 20240120, 6, 3, 850.00, 3, 15);



-- Create a materialized view	

CREATE MATERIALIZED VIEW CustomerOrdersSummary AS
SELECT 
    C.CustomerID,
    C.FirstName,
    C.LastName,
    COUNT(O.OrderID) AS TotalOrders,
    SUM(O.OrderAmount) AS TotalRevenue
FROM 
    Customer C
LEFT JOIN 
    CustomerOrders O ON C.CustomerID = O.CustomerID
GROUP BY 
    C.CustomerID, C.FirstName, C.LastName;
	
	Select * From CustomerOrdersSummary ;



	-- Create a materialized view	


	CREATE MATERIALIZED VIEW GeneralInfoAboutProduct AS
SELECT 
    P.ProductID,
    P.ProductName,
    P.Category,
    SUM(O.Quantity) AS TotalQuantitySold,
    SUM(O.OrderAmount) AS TotalSalesRevenue
FROM 
    Product P
LEFT JOIN 
    CustomerOrders O ON P.ProductID = O.ProductID
GROUP BY 
    P.ProductID, P.ProductName, P.Category;

		Select * From GeneralInfoAboutProduct ;

		-- Create a materialized view	

		
-- Create the Product Sales Summary materialized view
CREATE MATERIALIZED VIEW ProductSalesSummary AS
SELECT 
    P.ProductID,
    P.ProductName,
    PC.CategoryName,
    SUM(CO.OrderAmount) AS TotalSales,
    SUM(CO.Quantity) AS TotalQuantitySold,
    P.StockQuantity
FROM 
    Product P
LEFT JOIN 
    CustomerOrders CO ON P.ProductID = CO.ProductID
JOIN 
    ProductCategory PC ON P.ProductCategoryID = PC.ProductCategoryID
GROUP BY 
    P.ProductID, P.ProductName, PC.CategoryName, P.StockQuantity;

	
		Select * From ProductSalesSummary ;



---------------------------------------------------
CREATE MATERIALIZED VIEW DecreasedRevenue AS
SELECT
    CASE
        WHEN GROUPING(SP.SalespersonName) = 1 THEN 'All Salespersons'
        ELSE SP.SalespersonName
    END AS SalespersonName,
    SUM(O.OrderAmount) AS OriginalRevenue,
    SUM(O.OrderAmount) * 0.85 AS ReducedRevenue
FROM Salesperson SP
LEFT JOIN CustomerOrders O ON SP.SalespersonID = O.SalespersonID
GROUP BY CUBE (SP.SalespersonName);


SELECT
    PC.CategoryName,
    COUNT(DISTINCT O.CustomerID) AS CustomerCount
FROM CustomerOrders O
JOIN Product P ON O.ProductID = P.ProductID
JOIN ProductCategory PC ON P.ProductCategoryID = PC.ProductCategoryID
GROUP BY ROLLUP (PC.CategoryName);


SELECT
    O.CustomerID,
    PC.CategoryName,
    O.OrderAmount,
    AVG(O.OrderAmount) OVER (PARTITION BY O.CustomerID, PC.CategoryName) AS AverageOrderAmount
FROM CustomerOrders O
JOIN Product P ON O.ProductID = P.ProductID
JOIN ProductCategory PC ON P.ProductCategoryID = PC.ProductCategoryID;




----------------------------------------------------------------

SELECT *
FROM (
    SELECT
        C.CustomerID,
        C.FirstName,
        C.LastName,
        CO.OrderID,
        LEVEL AS HierarchyLevel
    FROM Customer C
    LEFT JOIN CustomerOrders CO ON C.CustomerID = CO.CustomerID
    START WITH CO.OrderID IS NULL -- Starting with customers who have no orders
    CONNECT BY PRIOR C.CustomerID = CO.CustomerID
)
MODEL
    DIMENSION BY (CustomerID)
    MEASURES (FirstName, LastName, OrderID, HierarchyLevel)
    RULES (
        HierarchyLevel[CustomerID] = HierarchyLevel[CV(CustomerID)] + 1,
        FirstName[CustomerID] = FirstName[CV(CustomerID)],
        LastName[CustomerID] = LastName[CV(CustomerID)],
        OrderID[CustomerID] = OrderID[CV(CustomerID)]
    )
ORDER BY HierarchyLevel, CustomerID;

---------------------------------------
SELECT *
FROM (
    SELECT
        C.CustomerID,
        C.FirstName,
        C.LastName,
        COALESCE(CO.TotalOrders, 0) AS TotalOrders, 
        C.Email, 
        C.Address, 
        LEVEL AS HierarchyLevel
    FROM Customer C
    LEFT JOIN (
        SELECT CustomerID, COUNT(OrderID) AS TotalOrders
        FROM CustomerOrders
        GROUP BY CustomerID
    ) CO ON C.CustomerID = CO.CustomerID
    START WITH CO.TotalOrders IS NULL
    CONNECT BY NOCYCLE PRIOR C.CustomerID = C.CustomerID 
)
MODEL
    DIMENSION BY (CustomerID)
    MEASURES (FirstName, LastName, TotalOrders, Email, Address, HierarchyLevel)
    RULES (
        HierarchyLevel[CustomerID] = CASE 
            WHEN CV(CustomerID) IS NULL THEN 0
            ELSE HierarchyLevel[CV(CustomerID)] + 1 
        END,
        FirstName[CustomerID] = FirstName[CV(CustomerID)],
        LastName[CustomerID] = LastName[CV(CustomerID)],
        TotalOrders[CustomerID] = TotalOrders[CV(CustomerID)],
        Email[CustomerID] = Email[CV(CustomerID)],
        Address[CustomerID] = Address[CV(CustomerID)]
    )
ORDER BY HierarchyLevel, CustomerID;

