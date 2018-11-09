#### Name: David Murphy ####
use project;

#### Question 1 ####
select e.e_ID as 'Employee ID', e.e_fname as 'First Name', 
	e.e_lname as 'Last Name', 
	e.e_dept as 'Department', e.e_office as 'Office'
	, e.e_phone as 'Phone',
	e.e_hiredate as 'Hiring Date', 
	e.e_hourlyrate as 'Hourly Rate'
from employee e
order by e.e_lname;

#### Question 2 ####
select e.e_ID 'Employee ID', e.e_fname as 'First Name', 
	e.e_lname as 'Last Name'
from employee e
where e.e_hourlyrate > 35
order by e.e_hourlyrate;

#### Question 3 ####
select e.e_fname as 'First Name', e.e_lname as 'Last Name', 
	d.d_Name as 'Department Name'
from department d join employee e on e.e_dept = d.d_Number
where e.e_office like 'F%' or e.e_office like 'G%';

#### Question 4 ####
select p.p_Title as 'Project Title', 
	p.p_Budget as 'Project Budget'
from project p
where p.p_StartDate between '2010-01-01' and '2010-12-31'
order by p.p_Budget;

#### Question 5 ####
select d.d_Head as 'Department Head'
from department d
where d.d_Name = 'Programming';

#### Question 6 ####
#### Rounding because of large decimal number ####
select round(avg(e.e_hourlyrate),2) as 'Average Salary'
from employee e;

#### Question 7 ####
select e.e_fname as 'First Name', e.e_lname as 'Last Name', 
	d.d_Name as 'Department Name'
from employee e join department d on e.e_dept = d.d_Number;

#### Question 8 ####
select p.p_Title as 'Project Name',
	sum(t.td_Hours) as 'Time Worked in Hours'
from project p join time_detail t on p.p_Number = t.td_Project
group by t.td_Project;

#### Question 9 ####
select e.e_fname as 'First Name', e.e_lname as 'Last Name', 
	e.e_hiredate as 'Hiring Date', 
	round(datediff(curdate(), e.e_hiredate)/365) as 'Years Worked'
from employee e;

#### Question 10 ####
select p.p_Title as 'Project Name', 
	p.p_Budget as 'Current Budget', 
	round((p.p_Budget * 1.08),2) as 'Projected Budget'
from project p;