# Hands-on Exercise-1 (ppt M04)

drop database handson1;
create database handson1;
use handson1;

create table Department(
departmentCode varchar(10) primary key,
departmentName varchar(50)
);

create table Project(
projectId varchar(10) primary key,
projectName varchar(50)
);

create table employee(
employeeNumber integer primary key,
employeeName varchar(50),
dateOfJoining date,
designation varchar(5) constraint dsg_chk check(designation = "CEO" OR designation = "MD" OR designation = "SM" OR designation = "M" OR designation = "TL" OR designation = "SSE" OR designation = "SE" ),
salary decimal(10,2),
managerEmployeeNumber integer,
departmentCode varchar(10),
constraint dept_fk foreign key (departmentCode) references Department(departmentCode)
);


create table EmployeeProjects(
employeeNumber integer,
projectId varchar(10),
startDate date,
endDate date,
constraint employeeprojects_pk primary key(employeeNumber, projectId),
constraint emp_fk foreign key (employeeNumber) references Employee(employeeNumber),
constraint proj_fk foreign key (projectId) references Project(projectId)
);




# include date of birth in the employee table
alter table Employee add column dateOfBirth date;

desc Employee;

# change the size of employeename from 50 to 60
alter table Employee modify column employeeName varchar(60);
alter table Employee modify column employeeNumber integer;

# Inserting data into tables
insert into department values('LKM', "Learning and Knowledge Management");
INSERT INTO DEPARTMENT VALUES ('JavaCap', 'Java Capability');
INSERT INTO DEPARTMENT VALUES ('.NETCap', 'Dotnet Capability');
commit;

INSERT INTO PROJECT VALUES ('P1', 'Retail');
INSERT INTO PROJECT VALUES ('P2', 'Insurance');
INSERT INTO PROJECT VALUES ('P3', 'Resources');
INSERT INTO PROJECT VALUES ('P4', 'Banking');
INSERT INTO PROJECT VALUES ('P5', 'Internal Project');
commit;

INSERT INTO EMPLOYEE(employeeNumber, employeeName,dateOfBirth,dateOfJoining,designation, salary, managerEmployeeNumber, departmentCode) VALUES (7001, 'Cynthya'   , '1975-05-12' ,  '1997-02-14' , 'CEO' , 800000.00 , 7001, NULL);
INSERT INTO EMPLOYEE(employeeNumber, employeeName,dateOfBirth,dateOfJoining,designation, salary, managerEmployeeNumber, departmentCode)  VALUES (7002, 'Mario'     , '1976-02-14' ,  '1998-04-16' , 'MD'  , 500000.00 , 7001, 'JavaCap');

INSERT INTO EMPLOYEE(employeeNumber, employeeName,dateOfBirth,dateOfJoining,designation, salary, managerEmployeeNumber, departmentCode)  VALUES (7003, 'Jacob'     , '1976-05-16' ,  '1998-05-16' , 'MD'  , 400000.00 , 7001, '.NETCap');

INSERT INTO EMPLOYEE(employeeNumber, employeeName,dateOfBirth,dateOfJoining,designation, salary, managerEmployeeNumber, departmentCode)  VALUES (7004, 'Lucy'      , '1978-05-15' ,  '2000-06-15' , 'MD'  , 420000.00  , 7001, 'LKM');

INSERT INTO EMPLOYEE(employeeNumber, employeeName,dateOfBirth,dateOfJoining,designation, salary, managerEmployeeNumber, departmentCode)  VALUES (7005, 'Amy'       , '1978-09-16' ,  '2000-11-16' , 'SM'  , 240000.00  , 7002, 'JavaCap');

INSERT INTO EMPLOYEE(employeeNumber, employeeName,dateOfBirth,dateOfJoining,designation, salary, managerEmployeeNumber, departmentCode)  VALUES (7006, 'Frank'     , '1978-09-17' ,  '2000-09-19' , 'SM'  , 220000.00 , '7003', '.NETCap');

INSERT INTO EMPLOYEE(employeeNumber, employeeName,dateOfBirth,dateOfJoining,designation, salary, managerEmployeeNumber, departmentCode)  VALUES (7007, 'Phil'      , '1974-12-11' ,  '2000-11-12' , 'SM'  , 220000.00  , '7004', 'LKM');

INSERT INTO EMPLOYEE(employeeNumber, employeeName,dateOfBirth,dateOfJoining,designation, salary, managerEmployeeNumber, departmentCode)  VALUES (7008, 'Arnold'    , '1984-03-13' ,  '2000-04-01' , 'TL'  , 80000.00  , '7005', 'JavaCap');

INSERT INTO EMPLOYEE(employeeNumber, employeeName,dateOfBirth,dateOfJoining,designation, salary, managerEmployeeNumber, departmentCode)  VALUES (7009, 'Jack'      , '1984-09-23' ,  '2000-06-23' , 'TL'  , 88000.00  , '7006', '.NETCap');

INSERT INTO EMPLOYEE(employeeNumber, employeeName,dateOfBirth,dateOfJoining,designation, salary, managerEmployeeNumber, departmentCode)  VALUES (7010, 'Justin'    , '1984-11-07' ,  '2000-02-09' , 'TL'  , 86000.00  , '7007', 'LKM');

INSERT INTO EMPLOYEE(employeeNumber, employeeName,dateOfBirth,dateOfJoining,designation, salary, managerEmployeeNumber, departmentCode)  VALUES (7011, 'Megan'     , '1984-07-21' ,  '2002-09-19' , 'TL'  , 87000.00  , '7007', 'LKM');

INSERT INTO EMPLOYEE(employeeNumber, employeeName,dateOfBirth,dateOfJoining,designation, salary, managerEmployeeNumber, departmentCode)  VALUES (7012, 'Stuart'    , '1980-05-23' ,  '2016-05-22' , 'SSE' , 35000.00    , '7008', 'JavaCap');

INSERT INTO EMPLOYEE(employeeNumber, employeeName,dateOfBirth,dateOfJoining,designation, salary, managerEmployeeNumber, departmentCode)  VALUES (7013, 'Clarke'    , '1994-02-24' ,  '2016-05-22' , 'SSE' , 32000.00    , '7008', 'JavaCap');

INSERT INTO EMPLOYEE(employeeNumber, employeeName,dateOfBirth,dateOfJoining,designation, salary, managerEmployeeNumber, departmentCode)  VALUES (7014, 'Darwin'    , '1992-05-03' ,  '2016-05-22' , 'SE' , '30000.00'    , '7009', '.NETCap');

INSERT INTO EMPLOYEE(employeeNumber, employeeName,dateOfBirth,dateOfJoining,designation, salary, managerEmployeeNumber, departmentCode)  VALUES (7015, 'Chelsea'   , '1994-01-19' ,  '2016-05-22' , 'SSE' , 38000.00    , '7010', 'LKM');

INSERT INTO EMPLOYEE(employeeNumber, employeeName,dateOfBirth,dateOfJoining,designation, salary, managerEmployeeNumber, departmentCode)  VALUES (7016, 'Dan'       , '1991-05-27' ,  '2016-07-07' , 'SE' , 30000.00    , '7009', '.NETCap');

INSERT INTO EMPLOYEE(employeeNumber, employeeName,dateOfBirth,dateOfJoining,designation, salary, managerEmployeeNumber, departmentCode)  VALUES (7017, 'Jimmy'     , '1993-10-11' ,  '2016-07-07' , 'SE' , 32000.00    , '7010', 'LKM');

INSERT INTO EMPLOYEE(employeeNumber, employeeName,dateOfBirth,dateOfJoining,designation, salary, managerEmployeeNumber, departmentCode)  VALUES (7018, 'James'     , '1993-12-19' ,  '2016-07-07' , 'SE' , 35000.00    , NULL, '.NETCap');

INSERT INTO EMPLOYEE(employeeNumber, employeeName,dateOfBirth,dateOfJoining,designation, salary, managerEmployeeNumber, departmentCode)  VALUES (7019, 'Joseph'    , '1992-12-31' ,  '2016-07-07' , 'SE' , 30000.00    , NULL, '.NETCap');

commit;
 
INSERT INTO EMPLOYEEPROJECTS VALUES (7005, 'P1', '2014-07-01', null);

INSERT INTO EMPLOYEEPROJECTS VALUES (7006, 'P1', '2016-06-01', null);

INSERT INTO EMPLOYEEPROJECTS VALUES (7004, 'P2', '2014-07-16', '2015-05-11');

INSERT INTO EMPLOYEEPROJECTS VALUES (7013, 'P2', '2014-07-01', '2014-11-11');

INSERT INTO EMPLOYEEPROJECTS VALUES (7012, 'P2', '2016-07-01', '2015-02-28');

INSERT INTO EMPLOYEEPROJECTS VALUES (7007, 'P3', '2015-05-11', null);

INSERT INTO EMPLOYEEPROJECTS VALUES (7014, 'P3', '2014-11-11', null);

INSERT INTO EMPLOYEEPROJECTS VALUES (7013, 'P3', '2015-02-28', null);

INSERT INTO EMPLOYEEPROJECTS VALUES (7016, 'P2', '2014-07-16', null);

INSERT INTO EMPLOYEEPROJECTS VALUES (7012, 'P1', '2015-03-01', null);

Commit;

# Hands-on Exercise-1 (ppt M05)

select * from employee;
SET SQL_SAFE_UPDATES=0;
update employee set salary=salary*1.05;
commit;

update employee set salary=salary*1.05 where designation="SSE";
set autocommit=0;
delete from employeeProjects;
select * from employeeProjects;
rollback;



delete from employeeProjects where projectId="P1";
rollback;

delete from Department;

# Maximum salary of the company
select max(salary) from employee;

# average salary of the company
select avg(salary) from employee;

# Maximum salary who are tls
select max(salary) from employee where designation="TL";

# Display the total number of employees in the company
select count(employeeNumber) from employee;

# Display the total number of Managers in the company. (If an employee is playing the role of the supervisor for any other employeethen the employee is considered as Manager)
select count(managerEmployeeNumber) from employee;

# Display the total number SMs in the company
select count(employeeNumber) from employee where designation="SM";

# 1. Display EmployeeName, Designation and Salary for ALL the employees
select employeeName, designation, salary from employee;

# 2. Display different designations in the company (Each designation should be displayed only once)
select distinct designation from employee;

# 3. Display EmployeeName and Salary of SSEs whose salary is more than 35000
select employeeName, salary from employee where designation="SSE" and salary>35000;

# 4. Display EmployeeName, Designation and Salary of SM, SSE and SE
select employeeName, designation, salary from employee where designation in ("SM", "SSE", "SE");

# 5. Display EmployeeName and DateOfJoining of employees who have joined in the year 2000
select employeeName, dateOfJoining from employee where dateOfJoining like '2000%';

# 6. Display EmployeeName, DateofBirth and Age of ALL employees (Age is not a database column. Needs to be computed. In Oracle, SYSDATE contains the current date)
select employeeName, DateOfBirth, round(datediff(curdate(), dateOfBirth)/365) as age from employee;

# 7. Display EmployeeName and Salary of employees whose salary is in the range INR 50,000 to INR 100,000
select employeeName, salary from employee where salary between 50000 and 100000;

# 8. Display EmployeeName of employees whose name starts with ‘J’
select employeeName from employee where employeeName like 'J%';

# 9. Display EmployeeName of employees whose name ends with ‘k’
select employeeName from employee where employeeName like '%K';

# 10. Display EmployeeName of employees whose names contains ‘a’ as the second letter
select employeeName from employee where employeeName like '_a%';

# 11. Display EmployeeName of employees whose names contains only three letters
select employeeName from employee where employeeName like '___';

# 12. Display EmployeeName and Designation of MDs whose name starts with ‘M’ 
select employeeName, designation from employee where designation="MD" and employeeName like 'M%';

# 13. Display EmployeeName and DateOfJoining of employees who have joined in the month of ‘MAY’
select employeeName, dateOfJoining from employee where month(dateOfJoining)="05";

# 14. Display EmployeeName and Salary of ALL employees in the alphabetical order (‘A’ to ‘z’) of EmployeeName.
select employeeName, salary from employee order by employeeName asc;

# 15. Display EmployeeName and DateOfBirth of ALL employees in the order of eldest to youngest
select employeeName, dateOfBirth from employee order by dateOfBirth asc;

# 16. Display EmployeeName and Salary of ALL employees in the decreasing order of Salary
select employeeName, salary from employee order by salary desc;

# 17. Display EmployeeName and Salary of ALL employees in the decreasing order of Salary and in the alphabetical order of (‘A’ to ‘z’) EmployeeName if the salary is same
select employeeName, salary from employee order by salary desc, employeeName;

# 18. Display EmployeeName,Designation and Salary of TLs in the decreasing order of Salary
select employeeName, designation, salary from employee where designation="TL" order by salary desc;


# Hands-on day3_M01

# 1. Display designation and number of employees in each designation.
select designation, count(*) from employee group by designation;

# 2. Display designation and maximum salary for each designation.
select designation, max(salary) from employee group by designation;

# 3. Display designation and maximum salary for each designation and Display the results in the decreasing order of maximum salary
select designation, max(salary) from employee group by designation order by designation desc;

# 4. Display Department_Code and number of employees working for each department
select departmentCode, count(employeeNumber) from employee group by departmentCode;

# 5. Display Designation and maximum salary for ‘TL’ and ‘SSE'
select designation, max(salary) from employee group by designation having designation in ('TL', 'SSE') ;

# 6. Display ManagerEmployeeNumberand Number of employees working under the Manager (Exclude Null  from ManagerEmployeeNumbercolumn)
select managerEmployeeNumber, count(employeeNumber) from employee group by managerEmployeeNumber having managerEmployeeNumber is not null ;

# 7. Display DepartmentCodeand NumberOfEmployees if the department has more than 5 employees
select departmentCode, count(employeeNumber) from employee group by departmentCode having count(employeeNumber) > 5;

# same ppt next slide questions
# 1. display deptCode and avg salary if the avg salary is more than 1,50,000 (exclude null under department code column)
select departmentCode, avg(salary) as avg_salary from employee where departmentCode is not null group by departmentCode having avg_salary>150000;

# 2. Display Designation and average salary of each designation for “LKM” department if the average salary is more than INR 35,000. Display the results in the increasing order of average salary.
select designation, avg(salary) as avg_salary from employee where departmentCode="LKM" group by designation having avg_salary > 35000 order by avg_salary desc;

# 3. Display Project_Id, number of employees working in the project. 
# Display the results in the decreasing order of number of employees 
# (Exclude the results if the enddate is not null) has context menu
select projectId, count(employeeNumber) as noOfEmployees from EmployeeProjects group by projectId order by noOfEmployees desc;

# Display EmployeeNameand DateOfBirthof employees who were born in 90’s (1990 to 1999). 
# The DateOfBirthmust be displayed in ‘DD-Mon-YYYY’ format has context menu

select employeeName, date_format(dateOfBirth, '%d-%M-%y') from employee where year(dateOfBirth) between 1990 and 1999;


# Sql_M08 ppt hands-on
# 1. Display EmployeeName, Salary of employees whose salary is more than the average salary of the company
select employeeName, salary from employee where salary > (select avg(salary) from employee);

# 2. Display EmployeeName, Salary of employee(s) who is getting the lowest salary in the company
select employeeName, salary from employee where salary = (select min(salary) from employee);

# 3. Display EmployeeName of employees who are working in project ‘P1’
select employeeName from employee where employeeNumber in (select employeeNumber from employeeprojects where projectid = "p1");

# 4. Display ProjectName of projects which has more than 2 employees (Exclude rows if end date is not null)
select projectname from project where projectid in (select projectid from employeeprojects where endDate is not null group by projectid having count(employeenumber) > 2);

# 5. Display EmployeeName of Managers who have more than three team members
select employeename from employee where employeenumber in (select manageremployeenumber from employee group by manageremployeenumber having count(*) > 3);

# 6. Display the second maximum salary of the company
select max(salary) from employee where salary < (select max(salary) from employee);

# 7. Display the ProjectName of projects which currently does not have any employees
select projectname from project where projectid not in (select projectid from employeeprojects);

# 8. Display Employee Name, Salary of employees whose salary is more than the average salary of the department they belong to
select e1.employeename, e1.salary from employee e1 where e1.salary > (select avg(salary) from employee e2 where e1.departmentcode = e2.departmentcode);

# 9.  Display Employee Name of employees whose manager is younger than the employee
select e1.employeeName from employee e1 where employeenumber in (select manageremployeenumber from employee where e1.employeenumber=e2.employeenumber and e1.dateOfJoining < e2.dateOfJoining);
desc employee;
select e1.employeename from employee e1 where e1.dateOfBirth < (select e2.dateOfBirth from employee e2 where e2.employeenumber=e1.manageremployeenumber);