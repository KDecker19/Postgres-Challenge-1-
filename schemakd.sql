-- Create table for Departments
CREATE TABLE Departments (
    dept_no VARCHAR(255) PRIMARY KEY,
    dept_name VARCHAR(255)
);

-- Create table for Employee Titles
CREATE TABLE EmpTitles (
    title_id INT PRIMARY KEY,
    title VARCHAR(255),
    from_date DATE,
    to_date DATE
);

-- Create table for Employee Info
CREATE TABLE EmployeeInfo (
    emp_no INT PRIMARY KEY,
    emp_title_id INT,
    birth_date DATE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sex VARCHAR(255),
    hire_date DATE,
    FOREIGN KEY (emp_title_id) REFERENCES EmpTitles(title_id)
);

-- Create table for Employee Salaries
CREATE TABLE EmpSalaries (
    emp_no INT PRIMARY KEY,
    salary INT,
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (emp_no) REFERENCES EmployeeInfo(emp_no)
);

-- Create table for Department Employees
CREATE TABLE DeptEmp (
    emp_no INT, 
    dept_no VARCHAR(255),
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (emp_no) REFERENCES EmployeeInfo(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- Create table for Department Managers
CREATE TABLE DeptManager (
    emp_no INT,
    dept_no VARCHAR(255),
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (emp_no) REFERENCES EmployeeInfo(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);
