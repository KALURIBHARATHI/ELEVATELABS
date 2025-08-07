use elevatelab
.Use SELECT * and specific columns
select clientname,contactno from clients ---- client table
select deptname,location from departments ---- departments table
select empname,salary from employees --- employees table 
2.Apply WHERE, AND, OR, LIKE, BETWEEN
--- where --
select * from employees 
where salary >33000.00
---and--
select * from clients 
where country = 'india' and  email = 'tcs@global.com'
--or---
SELECT * 
FROM departments
WHERE location = 'banglore'
   OR location = 'chennai'
---like--
select * from clients
where clientname like 'c%'
----between--
select * from employees 
where salary between  30000.00  and 35000.00
3.Sort with ORDER BY
select * from employees 
order by salary desc 
--------------------interview------
1.What does SELECT * do?
sol- we can select all columns
ex- select * from tablename
2.How do you filter rows?
sol- Use the WHERE clause to filter rows based on a condition.
3.What is LIKE '%value%'?
sol- It's used to search for a pattern in text.
 select * from employees where empname like '%ravi kumar%'
4.What is BETWEEN used for?
sol - between is a operator we used in where condition . between operator work as difference of two numbers.
5.How do you limit output rows?
sol- Use the LIMIT keyword.
select * from employees limit 3
6.Difference between = and IN
sol- select * from employees where empname= 'ravi kumar';
	select * from employees where empname in ( 'ravi kumar','manoj varma');
7.How to sort in descending order?
select * from employees order by salary desc
8.What is aliasing?
sol- renaming column by using alias 
9.Explain DISTINCT.
sol- to provide unique rows. or to remove duplicate values.
10.What is the default sort order?
sol- by default order by clause in ascending 
