CREATE TABLE student (
    roll_no INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    grade CHAR(1),
    city VARCHAR(50)
);
INSERT INTO student (roll_no, full_name, marks, grade, city) VALUES
(1, 'Amit Sharma', 85, 'A', 'Delhi'),
(2, 'Sneha Verma', 78, 'B', 'Mumbai'),
(3, 'Raj Mehta', 92, 'A', 'Ahmedabad'),
(4, 'Priya Singh', 60, 'C', 'Lucknow'),
(5, 'Kunal Rao', 70, 'B', 'Hyderabad'),
(6, 'Neha Das', 88, 'A', 'Kolkata'),
(7, 'Ravi Patil', 55, 'D', 'Pune');

SELECT city,avg(marks)
FROM student
GROUP BY city
ORDER BY avg(marks);

#safe update sometimes we have to enable
SET SQL_SAFE_UPDATES = 0;

UPDATE student
set grade="O"
where grade ="A";
select * from student;

UPDATE student
SET marks=99
WHERE name="Priya Singh";

UPDATE student
SET grade = "B"
WHERE marks BETWEEN 70 and 80;

UPDATE student
SET grade = "A"
WHERE marks BETWEEN 80 and 90;

UPDATE student
SET marks = marks+1;

update student
set marks = 12
where roll_no = 6;

select * from student;

delete from student
where marks < 33;


CREATE TABLE dept (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);
CREATE TABLE teacher (
    teacher_id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    salary INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(dept_id)
    on update cascade
    on delete cascade
);
INSERT INTO dept (dept_id, dept_name, location) VALUES
(1, 'Computer Science', 'Block A'),
(2, 'Mathematics', 'Block B'),
(3, 'Physics', 'Block C'),
(4, 'English', 'Block D'),
(5, 'History', 'Block E');
INSERT INTO teacher (teacher_id, name, subject, salary, dept_id) VALUES
(101, 'Amit Sharma', 'Java', 50000, 1),
(102, 'Sneha Verma', 'Calculus', 48000, 2),
(103, 'Raj Mehta', 'Mechanics', 47000, 3),
(104, 'Priya Singh', 'English Lit.', 46000, 4),
(105, 'Neha Das', 'World History', 45000, 5),
(106, 'Kunal Rao', 'Python', 52000, 1),
(107, 'Ravi Patil', 'Statistics', 49000, 2);

select * from teacher;

update dept
set dept_id = 9
where dept_id=4;

update dept
set dept_id = 111
where dept_id=9;


#same student table again in use in Alter
CREATE TABLE student (
    roll_no INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    grade CHAR(1),
    city VARCHAR(50)
);
INSERT INTO student (roll_no, name, marks, grade, city) VALUES
(1, 'Amit Sharma', 85, 'A', 'Delhi'),
(2, 'Sneha Verma', 78, 'B', 'Mumbai'),
(3, 'Raj Mehta', 92, 'A', 'Ahmedabad'),
(4, 'Priya Singh', 60, 'C', 'Lucknow'),
(5, 'Kunal Rao', 70, 'B', 'Hyderabad'),
(6, 'Neha Das', 88, 'A', 'Kolkata'),
(7, 'Ravi Patil', 55, 'D', 'Pune');

Alter table student
add column age int;

alter table student
drop column age;

alter table student
add column age int not null default 19;
select * from student;

alter table student
modify column age varchar(20);

alter table student
change column age stu_age int;

insert into student values(8,"yash amte",99,"O","jalna",100);

alter table student
drop column stu_age;

alter table student
rename to stu;	

alter table stu
rename to student;

alter table student
change name full_name varchar (40);
 
delete from student
where marks <75;

alter table student
drop column grade;

truncate table student;

select * from student;