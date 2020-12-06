CREATE TABLE "departments" (
    "dept_id" SERIAL   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_id"
     )
);

CREATE TABLE "dept_emp" (
    "dept_emp_id" SERIAL   NOT NULL,
    "emp_no" VARCHAR   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "dept_emp_id"
     )
);

CREATE TABLE "dept_manager" (
    "dept_man_id" SERIAL   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" VARCHAR   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "dept_man_id"
     )
);

CREATE TABLE "employees" (
    "emp_id" SERIAL   NOT NULL,
    "emp_no" VARCHAR   NOT NULL,
    "emp_title_id" VARCHAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_id"
     )
);

CREATE TABLE "salaries" (
    "salary_id" SERIAL   NOT NULL,
    "emp_no" VARCHAR   NOT NULL,
    "salary" INTEGER   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "salary_id"
     )
);

CREATE TABLE "titles" (
    "id" SERIAL   NOT NULL,
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "id"
     )
);

Select * from "departments";

COPY "departments"("dept_no", "dept_name")
FROM '/Users/katherinekane/sql-challenge/Case Assignment/data/departments.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM departments;

COPY "dept_emp"("emp_no", "dept_no")
FROM '/Users/katherinekane/sql-challenge/Case Assignment/data/dept_emp.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM dept_emp;

COPY "dept_manager"("dept_no", "emp_no")
FROM '/Users/katherinekane/sql-challenge/Case Assignment/data/dept_manager.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM dept_manager;

COPY "employees"("emp_no", "emp_title_id", "birth_date","first_name","last_name", "sex", "hire_date")
FROM '/Users/katherinekane/sql-challenge/Case Assignment/data/employees.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM employees;

COPY "salaries"("emp_no", "salary")
FROM '/Users/katherinekane/sql-challenge/Case Assignment/data/salaries.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM salaries;

COPY "titles"("title_id", "title")
FROM '/Users/katherinekane/sql-challenge/Case Assignment/data/titles.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM titles;