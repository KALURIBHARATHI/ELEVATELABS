use elevatelabs
1.Apply aggregate functions on numeric columns
sol- sum()
 select sum(e.salary), d.deptname from employees  as e 
 join departments  as d on e.deptid=d.deptid
 group by d.deptname ;
 
2.Use GROUP BY to categorize
select d.deptname,p.projectname from departments as d 
join projects as p on d.deptid=p.deptid
group by d.deptname , p.projectname ;
3.Filter groups using HAVING
Find departments where total salary is more than ₹80,000
select d.deptname,sum(salary)as total from employees as e 
join departments as d on e. deptid= d.deptid
group by d.deptname 
having total >80000
Interview Questions:
1.What is GROUP BY?
sol- group by is used to group to similar rows together after aggregate functions.
2.Difference between WHERE and HAVING?
where- to filter condition  before aggregate
having- to filter groups after using group by
3.How does COUNT(*) differ from COUNT(column)?
count(*)- to calaculate entire rows 
count(column)- to calculate specific column rows return rows based on column name.
4.Can you group by multiple columns?
yes. we can use multiple columns in group by
5.What is ROUND() used for?
round()- to figure particulare round value.it removes decimal point.
6.How do you find the highest salary by department?
select max(salary),d.deptname from employees as e
join departments as d on e.deptid=d.deptid  group by d.deptname
7.What is the default behavior of GROUP BY?
Groups rows by the column(s) you mention.
Each group has only one row in the result.
Works with aggregate functions.
The output is one row per group.
8.Explain AVG and SUM.
select avg- it show avg value of entire column.
 sum- it show add value of entire column.
9.How to count distinct values?
COUNT(DISTINCT column_name) is used to count only unique (different) values in a column.
10.What is an aggregate function?
sol- to perform mathematical calculation like sum,avg,count,min,max .