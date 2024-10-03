Create database Person;
use Person;
CREATE TABLE person (
    Aadhaar_ID VARCHAR (12) NOT NULL,
    First_Name VARCHAR(50),
    Middle_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    DOB DATE,
    Age INT,
    Gender VARCHAR(10),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Nationality VARCHAR(50),
    Emergency_Contact VARCHAR(20),
    PRIMARY KEY (Aadhaar_ID)
);

CREATE TABLE Address (
    House_no VARCHAR(50),
    Street_Name VARCHAR(100),
    Landmark VARCHAR(100),
    PIN_Code VARCHAR (6) NOT NULL,
    City VARCHAR(50),
    State VARCHAR(50),
    PRIMARY KEY (PIN_Code)
);

CREATE TABLE State_Pro(
    Country_code CHAR(2) NOT NULL,
	PIN_Code VARCHAR(7) NOT NULL,
    Country VARCHAR(50),
    State VARCHAR(50),
    City VARCHAR(50),
    PRIMARY KEY (PIN_Code),
    FOREIGN KEY (PIN_Code) REFERENCES Address(PIN_Code)
);
DESC State_Pro;


Create Database HumanResources;
Use HumanResources;
CREATE TABLE Employee (
    Employee_ID VARCHAR (10) NOT NULL,
    Full_Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Employee_status VARCHAR(20),
    Department VARCHAR(50),
    Job_Title VARCHAR(50),
    Date_of_joining DATE,
    Salary DECIMAL(10,2),
    Aadhaar_ID VARCHAR(12),
    PRIMARY KEY (Employee_ID),
    FOREIGN KEY (Aadhaar_ID) REFERENCES Person.person(Aadhaar_ID)
);


CREATE TABLE Department (
    Department_ID VARCHAR(10) NOT NULL,
    Depart_Name VARCHAR(50),
    Employee_ID VARCHAR(10),
    Start_date DATE,
    PRIMARY KEY (Department_ID),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);

DESC Department;

INSERT INTO person (Aadhaar_ID, First_Name, Middle_Name, Last_Name, DOB, Age, Gender, Phone, Email, Nationality, Emergency_Contact)
VALUES
    (1234567890, 'Rahul', '', 'Sharma', '1990-05-15', 31, 'Male', '9876543210', 'rahul@example.com', 'Indian', '9876543210'),
    (2345678901, 'Priya', '', 'Patel', '1992-08-10', 29, 'Female', '8765432109', 'priya@example.com', 'Indian', '8765432109'),
    (3456789012, 'Amit', 'Kumar', 'Singh', '1985-03-22', 36, 'Male', '7654321098', 'amit@example.com', 'Indian', '7654321098'),
    (4567890123, 'Deepika', 'Rani', 'Verma', '1994-12-05', 27, 'Female', '6543210987', 'deepika@example.com', 'Indian', '6543210987'),
    (5678901234, 'Manish', '', 'Gupta', '1991-07-18', 30, 'Male', '5432109876', 'manish@example.com', 'Indian', '5432109876'),
    (6789012345, 'Aarti', '', 'Shah', '1988-11-25', 33, 'Female', '4321098765', 'aarti@example.com', 'Indian', '4321098765'),
    (7890123456, 'Vikram', 'Singh', 'Chauhan', '1987-02-14', 34, 'Male', '3210987654', 'vikram@example.com', 'Indian', '3210987654'),
    (8901234567, 'Anjali', '', 'Joshi', '1993-09-30', 28, 'Female', '2109876543', 'anjali@example.com', 'Indian', '2109876543'),
    (9012345678, 'Rajesh', '', 'Shukla', '1989-06-08', 32, 'Male', '1098765432', 'rajesh@example.com', 'Indian', '1098765432'),
    (0123456789, 'Sneha', '', 'Verma', '1995-04-02', 26, 'Female', '0987654321', 'sneha@example.com', 'Indian', '0987654321');
    

INSERT INTO Address (House_No, Street_Name, Landmark, PIN_Code, City, State)
VALUES
    ('1A', 'Ratna Apartments', 'Hawai Park', '123456', 'Mumbai', 'Maharashtra'),
    ('B-12', 'Pine Society', 'BIG Mall', '234567', 'Delhi','Delhi'),
    ('C-3', 'Sushma Towers', 'City Hospital', '345678', 'Bengaluru', 'Karnataka'),
    ('D-45', 'Willow Enclave', 'Vijay School', '456789', 'Chennai', 'Tamil Nadu'),
    ('E-9', 'Radha Residency', 'Triupathi Temple', '567890', 'Kolkata', 'West Bengal'),
    ('F-67', 'Ganga Heights', 'JKL Park', '678901', 'Hyderabad',  'Telangana'),
    ('G-21', 'Vikram Apartments', 'Ojas Hospital', '789012', 'Ahmedabad',  'Gujarat'),
    ('H-8', 'Guru Nanak Society', 'Raj Mall', '890123', 'Pune', 'Maharashtra'),
    ('I-32', 'Maple Towers', 'Laxman School', '901234', 'Jaipur', 'Rajasthan'),
    ('J-5', 'Pinecrest Enclave', 'Kawab Chawk', '012345', 'Lucknow',  'Uttar Pradesh');
    

INSERT INTO State_Pro (Country_code, Country, State, PIN_Code, City)
VALUES
    ('91', 'India', 'Maharashtra', '123456', 'Mumbai'),
    ('91', 'India', 'Delhi','234567','Delhi'),
    ('91', 'India', 'Karnataka', '345678', 'Bengaluru'),
    ('91', 'India', 'Chennai', '456789', 'Tamil Nadu'),
    ('91', 'India', 'West Bengal', '567890','Kolkata' ),
    ('91', 'India',  'Telangana', '678901', 'Hyderabad'),
    ('91', 'India', 'Gujarat', '789012', 'Ahmedabad'),
    ('91', 'India', 'Maharashtra', '890123', 'Pune'),
    ('91', 'India', 'Rajasthan', '901234', 'Jaipur'),
    ('91', 'India', 'Uttar Pardesh', '012345', 'Lucknow');



use HumanResources;

INSERT INTO Employee (Employee_ID, Full_Name, Age, Gender, Phone, Email, Employee_status, Department, Job_Title, Date_of_joining, Salary, Aadhaar_ID)
VALUES
    ('EMP001', 'Rahul Kumar', 30, 'Male', '9876543210', 'rahul@example.com', 'Patr-time', 'HR', 'HR Manager', '2021-01-01', 50000, 1234567890),
    ('EMP002', 'Priya Patel', 28, 'Female', '8765432109', 'priya@example.com', 'Part_time', 'Sales', 'Sales Executive', '2021-02-01', 40000, 2345678901),
    ('EMP003', 'Amit Singh', 35, 'Male', '7654321098', 'amit@example.com', 'Full-time', 'IT', 'Software Engineer', '2021-03-01', 45000, 3456789012),
    ('EMP004', 'Deepika Verma', 32, 'Female', '6543210987', 'deepika@example.com', 'Full-time', 'Finance', 'Accountant', '2021-04-01', 38000, 4567890123),
    ('EMP005', 'Manish Gupta', 29, 'Male', '5432109876', 'manish@example.com', 'Full-time', 'Marketing', 'Marketing Manager', '2021-05-01', 55000, 5678901234),
    ('EMP006', 'Aarti Shah', 31, 'Female', '4321098765', 'aarti@example.com', 'Full-time', 'Operations', 'Operations Executive', '2021-06-01', 42000, 6789012345),
    ('EMP007', 'Vikram Chauhan', 34, 'Male', '3210987654', 'vikram@example.com', 'Part-time', 'HR', 'HR Executive', '2021-07-01', 38000, 7890123456),
    ('EMP008', 'Anjali Joshi', 27, 'Female', '2109876543', 'anjali@example.com', 'Full-time', 'IT', 'Database Administrator', '2021-08-01', 52000, 8901234567),
    ('EMP009', 'Rajesh Shukla', 33, 'Male', '1098765432', 'rajesh@example.com', 'Full-time', 'Sales', 'Sales Manager', '2021-09-01', 60000, 9012345678),
    ('EMP010', 'Sneha Verma', 30, 'Female', '0987654321', 'sneha@example.com', 'Part-time', 'Finance', 'Financial Analyst', '2021-10-01', 42000, 0123456789);
    
    INSERT INTO Department (Department_ID, Depart_Name, Employee_ID, Start_date)
VALUES
    (1, 'HR', 'EMP001', '2021-01-01'),
    (2, 'Sales', 'EMP002', '2021-02-01'),
    (3, 'IT', 'EMP003', '2021-03-01'),
    (4, 'Finance', 'EMP004', '2021-04-01'),
    (5, 'Marketing', 'EMP005', '2021-05-01'),
    (6, 'Operations', 'EMP006', '2021-06-01'),
    (7, 'HR', 'EMP007', '2021-07-01'),
    (8, 'IT', 'EMP008', '2021-08-01'),
    (9, 'Sales', 'EMP009', '2021-09-01'),
    (10, 'Finance', 'EMP010', '2021-10-01');
    
    

    
Use HumanResources;
Use Person;

Select * from Department;



Select Aadhaar_ID, First_Name, Gender 
From person;




Select First_Name, Phone, Email
From person
WHERE Gender="Female";

Select Full_Name, Employee_ID, Department, Job_Title 
From Employee
WHERE Employee_Status = "Full-Time";
Use Person;
Select First_Name, Email,Age
From person
order by Age ASC;


Select Full_Name, Department, Job_Title
From Employee
order by Date_of_joining ASC;


 Select * from person;
Select Age, First_Name 
from person 
where Gender = "Female";
SELECT * FROM Address ORDER BY State;

    ALTER TABLE Address 
    drop column District; 

select Address.House_no, Address.Street_Name, State_Pro.Country_code, State_Pro.Country 
from Address
join State_Pro ON Address.PIN_Code = State_Pro.PIN_Code;

SELECT First_Name, DOB, Department, Job_Title, Date_of_joining 
FROM Person.person
JOIN HumanResources.Employee ON person.Aadhaar_ID = Employee.Aadhaar_ID;





SET SQL_SAFE_UPDATES=0;
UPDATE  Person
set Middle_Name = "Singh" 
where First_Name = "Aarti";

select* from person
where First_Name = "Aarti";

Use HumanResources;

 Select * from Employee;
 update employee
 set Age = 27
 where Full_Name = "Amit Singh";
 
 Select * from Employee
 where Full_Name="Amit Singh";
 
 Select *
 from Employee
right join Department
 on Employee.Employee_ID=Department.Employee_ID;
 
 USE HumanResources;
 Select count(*) from Employee;
 Use Person;
 
 Select count(Age)
 from person
 where Gender = "Male";
 
 Select count(Department)
 from employee
 Where Employee_Status = "Full-time";
 
 Select MIN(Salary) from Employee;
 
 ALTER TABLE State_Pro 
 Add column Capital Varchar (20);
 desc State_Pro;
 
 Alter table State_Pro
 DROP COLUMN Capital;
 
 use HumanResources;
 desc Department;
 ALTER TABLE Department
 RENAME COLUMN Depart_Name TO Dept_Name;
 

ALTER TABLE Employee
MODIFY Phone Varchar (10);
 