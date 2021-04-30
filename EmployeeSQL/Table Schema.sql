CREATE TABLE titles(
	title_id int	NOT NULL,
    title varchar	NOT NULL,
    PRIMARY KEY (title_id)
);

SELECT * from titles;

CREATE TABLE departments(
	dept_no varchar	NOT NULL,
    dept_name varchar	NOT NULL,
    PRIMARY KEY (dept_no)
);

SELECT * from departments;

CREATE TABLE employees(
    emp_no int	NOT NULL,
    emp_title_id varchar	NOT NULL,
    birth_date date	NOT NULL,
    first_name varchar	NOT NULL,
    last_name varchar	NOT NULL,
    sex varchar	NOT NULL,
    hire_date date	NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * from employees;

CREATE TABLE dept_manager(
    dept_no varchar	NOT NULL,
    emp_no int	NOT NULL,
	primary key (dept_no,emp_no),
     FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * from dept_manager;


CREATE TABLE dept_emp(
    emp_no int	NOT NULL,
    dept_no varchar	NOT NULL,
	primary key (dept_no,emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * from dept_emp;

CREATE TABLE salaries(
    emp_no int	NOT NULL,
    salary  int	NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * from salaries;


