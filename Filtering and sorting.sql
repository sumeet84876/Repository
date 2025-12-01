create database filteringSorting;
use filteringSorting;

create table employees(
EmpID int,
EmpName varchar(20),
Department varchar(20),
City varchar(10),
Salary int,
HireDate date
);
insert into employees values(
101, 'Rahul Mehta', 'Sales', 'Dehli', 55000, '2020-04-12'),
(102, 'Priya Sharma', 'HR', 'Mumbai', 62000, '2019-04-25'),
(103, 'Aman Singh', 'IT', 'Bengaluru', 72000, '2021-03-10'),
(104, 'Neha Patel', 'Sales', 'Dehli', 48000, '2022-01-14'),
(105, 'Karan Joshi', 'Marketing', 'Pune', 45000, '2018-07-22'),
(106, 'Divya Nair', 'IT', 'Chennai', 81000, '2019-12-11'),
(107, 'Raj Kumar', 'HR', 'Delhi', 60000, '2020-05-28'),
(108, 'Simran Kaur', 'Finance', 'Mumbai', 58000, '2021-08-03'),
(109, 'Arjun Reddy', 'IT', 'Hyderabad', 70000, '2022-02-18'),
(110, 'Anjali Das', 'Sales', 'Kolkata', 51000, '2023-01-15');

-- Question 1 : Show employees working in either the ‘IT’ or ‘HR’ departments?
-- Answer: 
select * from employees where Department = "IT" or Department = "HR";

-- Question 2 : Retrieve employees whose department is in ‘Sales’, ‘IT’, or ‘Finance’?
-- Answer:
select * from employees where Department ='Sales' or Department ='IT' or Department = 'Finance';

 -- Question 3 : Display employees whose salary is between ₹50,000 and ₹70,000?
 -- Answer:
 select * from employees where Salary between 50000 and 70000;
 
 -- Question 4 : List employees whose names start with the letter ‘A'?
 -- Answer:
 select * from employees where EmpName like 'A%';
 
 -- Question 5 : Find employees whose names contain the substring ‘an'?
 -- Answer:
 select * from employees where EmpName like '%an%';
 
 -- Question 6 : Show employees who are from ‘Delhi’ or ‘Mumbai’ and earn more than ₹55,000?
 -- ANswer:
 select * from employees where City = 'Delhi' or City= 'Mumbai' and Salary >55000;
 
 -- Question 7 : Display all employees except those from the ‘HR’ department?
 -- Answer:
 select * from employees where Department != 'HR';
 
 -- Question 8 : Get all employees hired between 2019 and 2022, ordered by HireDate (oldest first)?
 -- Answer:
 select * from employees where HireDate between '2019-01-01' and '2022-12-31'
 order by HireDate asc;