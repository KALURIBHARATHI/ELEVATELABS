create database elevatelab

use elevatelab
  CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,             -- Primary Key
    DeptName VARCHAR(50) NOT NULL UNIQUE,  -- No null, unique names
    Location VARCHAR(100) DEFAULT 'Hyderabad' -- Default location
);
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,                      -- Unique employee ID
    EmpName VARCHAR(100) NOT NULL,              -- Cannot be NULL
    Email VARCHAR(100) UNIQUE,                  -- Unique email
    Salary DECIMAL(10,2) CHECK (Salary >= 10000), -- Must be >= 10000
    DeptID INT,                                 -- FK reference
    JoiningDate DATE ,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);
CREATE TABLE Projects (
    ProjectID INT,
    DeptID INT,
    ProjectName VARCHAR(100) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE,
    Budget DECIMAL(12,2) CHECK (Budget > 50000),
    PRIMARY KEY (ProjectID, DeptID),               -- Composite key
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);
CREATE TABLE Clients (
    ClientID INT PRIMARY KEY,
    ClientName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Country VARCHAR(50) DEFAULT 'India',       -- Default country
    ContactNo VARCHAR(15) 
);
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    EmpID INT NOT NULL,
    ClientID INT NOT NULL,
    OrderDate DATE  ,
    Amount DECIMAL(10,2) CHECK (Amount > 0),
    FOREIGN KEY (EmpID) REFERENCES Employees(EmpID),
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
);
INSERT DATA INTO TABLES
INSERT INTO Departments (DeptID, DeptName, Location)
VALUES
(1, 'Human Resources', 'Bangalore'),
(2, 'Finance', 'Hyderabad'),
(3, 'IT Support', 'Chennai'),
(4, 'Research', 'Delhi');

-- Example inserting without location (default will apply)
INSERT INTO Departments (DeptID, DeptName)
VALUES
(5, 'Marketing'),
(6, 'Sales');
INSERT INTO Employees (EmpID, EmpName, Email, Salary, DeptID, JoiningDate) VALUES
(101, 'Ravi Kumar', 'ravi.kumar@email.com', 35000.00, 1, '2024-05-15'),
(102, 'Priya Sharma', 'priya.sharma@email.com', 42000.00, 2, '2024-06-10'),
(103, 'Arjun Mehta', 'arjun.mehta@email.com', 28000.00, 3, '2024-06-20'),
(104, 'Sneha Reddy', 'sneha.reddy@email.com', 50000.00, 4, '2024-07-01'),
(105, 'Manoj Varma', 'manoj.varma@email.com', 30000.00, 5, '2024-07-05'),
(106, 'Deepika Nair', 'deepika.nair@email.com', 32000.00, 6, '2024-07-07'),
(107, 'Vikas Sharma', 'vikas.sharma@email.com', 27000.00, 1, '2024-07-10'),
(108, 'Anjali Gupta', 'anjali.gupta@email.com', 45000.00, 2, '2024-07-15'),
(109, 'Rahul Singh', 'rahul.singh@email.com', 38000.00, 3, '2024-07-20'),
(110, 'Divya Patel', 'divya.patel@email.com', 36000.00, 4, '2024-07-25');
INSERT INTO Projects (ProjectID, DeptID, ProjectName, StartDate, EndDate, Budget) VALUES
(201, 1, 'HR Management System', '2024-05-01', '2024-08-15', 120000.00),
(202, 2, 'Financial Audit 2024', '2024-04-10', '2024-07-30', 95000.00),
(203, 3, 'IT Infrastructure Upgrade', '2024-06-05', NULL, 150000.00),
(204, 4, 'New Product Research', '2024-05-20', '2024-09-15', 180000.00),
(205, 5, 'Marketing Campaign Q3', '2024-07-01', NULL, 80000.00),
(206, 6, 'Sales Expansion Program', '2024-06-25', '2024-10-30', 100000.00),
(207, 1, 'Employee Training Program', '2024-07-10', '2024-09-01', 70000.00),
(208, 2, 'Tax Compliance System', '2024-06-12', NULL, 110000.00),
(209, 3, 'Cybersecurity Upgrade', '2024-05-15', '2024-08-31', 125000.00),
(210, 4, 'AI Research Project', '2024-07-05', NULL, 200000.00);
INSERT INTO Clients (ClientID, ClientName, Email, Country, ContactNo) VALUES
(301, 'Infosys Ltd', 'contact@infosys.com', 'India', '9876543210'),
(302, 'Tech Mahindra', 'info@techmahindra.com', 'India', '9812345678'),
(303, 'Microsoft Corp', 'sales@microsoft.com', 'USA', '9123456789'),
(304, 'Amazon Inc', 'amazon@business.com', 'USA', '9988776655'),
(305, 'TCS Pvt Ltd', 'tcs@global.com', 'India', '9876123450'),
(306, 'Google LLC', 'contact@google.com', 'USA', '9765432109'),
(307, 'Capgemini', 'capgemini@corp.com', 'France', '9234567812'),
(308, 'HCL Technologies', 'hcl@tech.com', 'India', '9988123456'),
(309, 'Oracle Corp', 'oracle@corp.com', 'USA', '9900112233'),
(310, 'Wipro Ltd', 'info@wipro.com', DEFAULT, '9823456712'); -- Uses default 'India'
INSERT INTO Orders (OrderID, EmpID, ClientID, OrderDate, Amount) VALUES
(401, 101, 301, '2024-07-01', 50000.00),
(402, 102, 302, '2024-07-03', 75000.00),
(403, 103, 303, '2024-07-05', 65000.00),
(404, 104, 304, '2024-07-06', 82000.00),
(405, 105, 305, '2024-07-07', 72000.00),
(406, 106, 306, '2024-07-08', 90000.00),
(407, 107, 307, '2024-07-09', 58000.00),
(408, 108, 308, '2024-07-10', 64000.00),
(409, 109, 309, '2024-07-11', 86000.00),
(410, 110, 310, '2024-07-12', 70000.00);
UPDATE TASK
2.Handle missing values using NULL or default
SELECT * FROM PROJECTS
WHERE ENDDATE IS NULL ;
3.Use UPDATE and DELETE with WHERE conditions
----update
 Increase salary for employees in IT Department
 UPDATE Employees
SET Salary = Salary + 5000
WHERE DeptID = 3;
UPDATE Employees
SET Salary = Salary * 1.10
WHERE DeptID = (SELECT DeptID FROM Departments WHERE DeptName = 'Finance');
-------delete
Delete orders from ClientID = 308 where OrderID = 408
DELETE FROM Orders
WHERE ClientID = 308
  AND OrderID = 408;
-------- where
Delete project with ProjectID = 210 from DeptID = 4
DELETE FROM Projects
WHERE ProjectID = 210
  AND DeptID = 4;
  -------interview questions
  1.Difference between NULL and 0?
  sol- NULL: Means no value / unknown value stored in the column.
       0: A numeric value zero, meaning the value is known but equals zero.
        ✅ Example: Salary = NULL (not given), Salary = 0 (zero salary).
2.What is a default constraint?
sol- A rule that automatically inserts a predefined value into a column if no value is given.
3.How does IS NULL work?
sol- Used in a query to check if a column has NULL values.
4.How do you update multiple rows?
sol-Use UPDATE with a WHERE condition that matches multiple rows.
5.Can we insert partial values?
sol- Yes, if:Other columns have default values or allow NULL, OR
You specify which columns to insert into.
6.What happens if a NOT NULL field is left empty?
sol-SQL will throw an error because NOT NULL columns must have a value.
7.How do you rollback a deletion?
sol- Use ROLLBACK if you are inside a transaction, before committing changes.
8.Can we insert values into specific columns only?
sol- Yes, by mentioning the column names in the INSERT statement.
9.How to insert values using SELECT?
sol- We can copy data from one table to another using INSERT INTO ... SELECT.
10.What is ON DELETE CASCADE?
sol- A rule in foreign keys that automatically deletes related rows from a child table when the parent row is deleted.







