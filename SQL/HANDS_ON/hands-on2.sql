# select statements execution

create database studDB;
use studDB;
create table course(
courseID integer primary key,
courseName varchar(20) check (courseName in ('Big Data','Cyber Security'))
);
create table student(
rno integer primary key,
name varchar(40),
cgpa float,
courseID integer references course(courseID)
);
insert into course values (1,'Big Data');
insert into course values (2,'Cyber Security');
select * from course;
insert into student values(1,'sachin',8.7,1);
insert into student values(2,'sehwag',7.7,1);
insert into student values(3,'bumrah',8.7,2);
insert into student values(4,'rohit',7.7,1);
insert into student values(5,'virat',5.7,2);
insert into student values(6,'rahul',8.7,2);
select * from student;
select * from student where rno=1;
select * from student where courseID=1 and cgpa>6.0;
select * from student where courseID=1 or cgpa>6.0;
select * from student where courseID=1 and cgpa>6.0;
select * from student where cgpa between 8.0 and 8.7;
select * from student where cgpa is null;
select * from student where courseID in (1,2);
select * from student where courseID not in (1,3);
select * from student where name like 'ra%';
SELECT NAME FROM student WHERE NAME LIKE 'R%'; 
SELECT NAME FROM student WHERE NAME LIKE 'RA_'; 
SELECT * FROM student WHERE NAME LIKE 'Ra%_'; 
SELECT * FROM student WHERE NAME LIKE '%_'; 
SELECT * FROM student WHERE NAME LIKE '_%'; 
SELECT * FROM student WHERE NAME LIKE 'R_a'; 
SELECT * FROM student WHERE NAME LIKE 'R___'; 
SELECT * FROM student WHERE NAME LIKE 'R___%';

select sum(cgpa) as tot_cgpa from student;
select avg(cgpa) as avg_cgpa,max(cgpa) as max_cgpa,min(cgpa) as min_cgpa,count(*) as total_records, count(distinct courseID) from student;

