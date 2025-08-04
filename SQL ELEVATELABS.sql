create database elevatelabs 
use elevatelabs
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




