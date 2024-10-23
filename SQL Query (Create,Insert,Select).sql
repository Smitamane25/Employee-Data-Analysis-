create database company;

use company;

CREATE TABLE branches (
    Branch_id CHAR(3) NOT NULL,
    Branch_name VARCHAR(100),
    PRIMARY KEY (Branch_id)
);

CREATE TABLE departments (
    department_id CHAR(10) NOT NULL,
    department_name VARCHAR(100),
    PRIMARY KEY (department_id),
    UNIQUE KEY (department_name)
);

CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(50) NOT NULL,
    department_id CHAR(10) NOT NULL,
    FOREIGN KEY (department_id)
        REFERENCES departments (department_id),
    Branch_id CHAR(3) NOT NULL,
    FOREIGN KEY (Branch_id)
        REFERENCES Branches (Branch_id),
    Salary INT,
    PRIMARY KEY (employee_id)
);

INSERT INTO branches (Branch_id, Branch_name) VALUES
('DEL', 'Delhi'),
('MUM', 'Mumbai'),
('KOL', 'Kolkata'),
('CHE', 'Chennai'),
('BEN', 'Bengaluru'),
('HYD', 'Hyderabad'),
('AHM', 'Ahmedabad'),
('PUN', 'Pune'),
('JAI', 'Jaipur'),
('LUC', 'Lucknow');

INSERT INTO Departments (department_id, department_name) VALUES
('SWD', 'Software Development'),
('ITS', 'IT Support'),
('CYS', 'Cybersecurity'),
('DS', 'Data Science'),
('COps', 'Cloud Operations'),
('DOps', 'DevOps'),
('SA', 'Systems Administration');

INSERT INTO employees (employee_id, employee_name, department_id, Branch_id, Salary) VALUES
(101, 'Aarav', 'SWD', 'DEL', 43726),
(102, 'Aditi', 'CYS', 'MUM', 38195),
(103, 'Ananya', 'ITS', 'KOL', 46542),
(104, 'Aryan', 'COps', 'BEN', 32087),
(105, 'Divya', 'DS', 'HYD', 49318),
(106, 'Ishaan', 'SA', 'AHM', 35764),
(107, 'Kavya', 'DOps', 'CHE', 41239),
(108, 'Krishna', 'CYS', 'AHM', 37850),
(109, 'Meera', 'ITS', 'BEN', 44671),
(110, 'Nisha', 'COps', 'HYD', 33408),
(111, 'Priya', 'DS', 'MUM', 48923),
(112, 'Rahul', 'DS', 'DEL', 36375),
(113, 'Rishi', 'DS', 'AHM', 47456),
(114, 'Tanya', 'SA', 'DEL', 34912),
(115, 'Pallavi', 'DOps', 'MUM', 40038);

select * from branches;

Select * from departments;

Select * from employees;
