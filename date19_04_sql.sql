-- Create the student table
CREATE TABLE student (
    roll_no INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    grade CHAR(1),
    city VARCHAR(50)
);

-- Insert 7 rows of sample data
INSERT INTO student (roll_no, name, marks, grade, city) VALUES
(1, 'Amit Sharma', 85, 'A', 'Delhi'),
(2, 'Sneha Verma', 78, 'B', 'Mumbai'),
(3, 'Raj Mehta', 92, 'A', 'Ahmedabad'),
(4, 'Priya Singh', 60, 'C', 'Lucknow'),
(5, 'Kunal Rao', 70, 'B', 'Hyderabad'),
(6, 'Neha Das', 88, 'A', 'Kolkata'),
(7, 'Ravi Patil', 55, 'D', 'Pune');


  select name , marks from student;
 
 select city from student;
 
 select DISTINCT city from student;

 select * from student
 where marks >80;
 
 select * from student
 where marks>80 and city ="delhi";
 
 select * from student
 where marks+10 >100;
 
 select * from student
 where marks>90 or city ="delhi";
 
 select * from student
 where marks between 80 and 90;

 select * from student
 where city in ("pune","mumbai","delhi","jalna");
 
 select * from student
where city not in ("mumbai", "pune");

select * from student
limit 3;

select * from student
where marks > 80
limit 3;

select * from student
order by city asc;

select * from student
order by marks desc;

select * from student
order by marks desc limit 3;

select max(marks) from student;

select count(name) from student;

select city, avg(marks) as avg_marks
from student
group by city
order by avg_marks asc;

select city, avg(marks) from student
group by city
order by avg(marks) desc;

select grade, count(roll_no) from student
group by grade
order by grade;

select city, count(roll_no) 
from student
group by city
HAVING max(marks) > 90;

SELECT city
FROM student
WHERE grade = "A"
group by city
HAVING MAX(marks) > 90;

CREATE TABLE customer (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    mode VARCHAR(20),
    city VARCHAR(50)
);
INSERT INTO customer (id, name, mode, city) VALUES
(1, 'Ankit Mehta', 'Online', 'Delhi'),
(2, 'Riya Shah', 'Offline', 'Mumbai'),
(3, 'Ankit Mehta', 'Online', 'Delhi'),
(4, 'Karan Patel', 'Online', 'Ahmedabad'),
(5, 'Riya Shah', 'Offline', 'Mumbai'),
(6, 'Divya Rao', 'Online', 'Hyderabad'),
(7, 'Ankit Mehta', 'Offline', 'Pune'),
(8, 'Karan Patel', 'Online', 'Ahmedabad'),
(9, 'Neha Jain', 'Offline', 'Delhi'),
(10, 'Divya Rao', 'Online', 'Hyderabad');

select mode,count(id) from customer
group by mode;


