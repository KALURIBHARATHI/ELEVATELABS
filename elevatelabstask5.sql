use elevatelabs
task 5
-- Create customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    phone VARCHAR(15)
);

-- Create orders table
CREATE TABLE orderss (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert data into customers
INSERT INTO customers (customer_id, customer_name, city, phone) VALUES
(1, 'Ravi Kumar', 'Hyderabad', '9876543210'),
(2, 'Anil Singh', 'Mumbai', '9876500001'),
(3, 'Meena Devi', 'Delhi', '9876500002'),
(4, 'Suresh Patel', 'Bangalore', '9876500003'),
(5, 'Priya Reddy', 'Hyderabad', '9876500004');

INSERT INTO orderss (order_id, customer_id, order_date, amount) VALUES
(101, 1, '2024-06-15', 1500.50),
(102, 1, '2024-07-01', 2500.00),
(103, 2, '2024-06-20', 1800.75),
(104, 3, '2024-07-05', 3000.00),
(105, 4, '2024-07-10', 2200.25);
select*from customers
select*from orderss 
-----------------joins-----------------
--inner join 
select c.customer_name ,c.city ,o.order_date from customers as c
join orderss as o on c.customer_id = o.customer_id 
--left join
select o.amount from customers as c 
left join orderss as o on c.customer_id= o.customer_id 
---right join 
select c.customer_name  from customers as c
right join  orderss as o on c.customer_id= o.customer_id
-- full join 
SELECT c.customer_id, c.customer_name, o.order_id, o.order_date, o.amount
FROM customers AS c
LEFT JOIN orderss AS o ON c.customer_id = o.customer_id

UNION

SELECT c.customer_id, c.customer_name, o.order_id, o.order_date, o.amount
FROM customers AS c
RIGHT JOIN orderss AS o ON c.customer_id = o.customer_id;
---interview questions
1.Difference between INNER and LEFT JOIN?
sol- inner- return all matching rows from both table
      left - return all matching rows from both table + remaing rows from left table.
2.What is a FULL OUTER JOIN?
sol- it provide entire rows  from eiether matched or unmatched   from both table.
3.Can joins be nested?
4.How to join more than 2 tables?
sol- You can join more than two tables by chaining multiple JOIN clauses together.
5.What is a cross join?
sol- A CROSS JOIN returns the Cartesian product of two tables.
Every row from the first table is combined with every row from the second table.
It does not require an ON condition.
6.What is a natural join?
sol- table join it self is called natural or self join .
7.Can you join tables without foreign key?
sol- yes. we can join based on common column from both tables.
8.What is a self-join?
sol- table join it self.
9.What causes Cartesian product?
sol- A Cartesian product happens when every row from one table is matched with every row from another table.
10.How to optimize joins?
sol- To make joins faster and more efficient:

