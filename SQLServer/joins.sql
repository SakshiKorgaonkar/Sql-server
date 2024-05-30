SELECT 
    c.FirstName AS ContactFirstName,
    c.LastName AS ContactLastName,
    e.EmployeeID AS EmployeeID,
    e.FirstName AS EmployeeFirstName,
    e.LastName AS EmployeeLastName,
    cu.CustomerID AS CustomerID,
    cu.FirstName AS CustomerFirstName,
    cu.LastName AS CustomerLastName
FROM 
    ContactTable c
LEFT JOIN 
    EmployeeTable e ON c.FirstName = e.FirstName AND c.LastName = e.LastName
LEFT JOIN 
    CustomerTable cu ON c.FirstName = cu.FirstName AND c.LastName = cu.LastName;
