--  Create a Departments table
CREATE TABLE Departments (
    dept_no VARCHAR (4) NOT NULL ,
    dept_name VARCHAR (20) NOT NULL,
	PRIMARY KEY (dept_no)
);

--  Create a Dept_Employees table
CREATE TABLE Dept_Employees (
    emp_no INT (6) NOT NULL,
    dept_no VARCHAR (4) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

--  Create a Dept_Managers table
CREATE TABLE Dept_Managers (
    dept_no VARCHAR (4) NOT NULL,
    emp_no INT (6) NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

--  Create a Employees table
CREATE TABLE Employees (
    emp_no INT (6) NOT NULL PRIMARY KEY,
    emp_title_id VARCHAR (5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR (20) NOT NULL,
    last_name VARCHAR (20) NOT NULL,
    sex VARCHAR (1) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

--  Create a Salaries table
CREATE TABLE Salaries (
    emp_no INT (6) NOT NULL PRIMARY KEY,
    salary INT (6) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

--  Create a Titles table
CREATE TABLE Titles (
    title_id VARCHAR (5) NOT NULL PRIMARY KEY,
    title VARCHAR (20) NOT NULL
);

-- I created Departments table first then Titles, Salaries, Employees, Dept_Employees, Dept_Managers respectively..