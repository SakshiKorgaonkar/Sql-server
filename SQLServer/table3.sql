CREATE TABLE CustomerTable (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(15),
    Email VARCHAR(30),
    Phone VARCHAR(10),
    Address VARCHAR(30),
    City VARCHAR(20),
    State VARCHAR(20),
    Zip VARCHAR(10)
);
