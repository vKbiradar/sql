--Creating Tables
--Inserting data into tables using INSERT INTO statement
--Importing data from external sources
--Constraints in SQL
--Accessing data present in tables using SELECT clause


--Keys in tables (Primary, Foreign, Candiadte Key, Super key...)

--Creating emp_details table within [sai_ test_db]

Use [sai_ test_db] ;


create table emp_details (
e_id int,
e_name varchar(100),
e_gender varchar (15),
e_dob date,
e_salary bigint,
e_dept varchar(30)
)
;

select * from emp_details

insert into emp_details values (1,'ranjith','Male','1994-08-22',450000,'Sales') ;
insert into emp_details values (2,'Sheela','Female','1995-09-24',550000,'Marketing') ;
insert into emp_details values (3,'Mohan','Male','1997-08-29',350000,'Marketing') ;
insert into emp_details values (4,'Pranay','Male','1999-07-22',250000,'Sales') ;
insert into emp_details values (5,'Shriya','Female','1997-05-22',350000,'Sales') ;

select
*
from
(
select 
	*,
	row_number() over(partition by e_id order by e_id asc) as row_nbr
from 
	emp_details 
) c
where
	row_nbr=1


delete from emp_details where e_id=1

alter table emp_details
 drop constraint e ;


--Alteryx

---Enforcing constraints on fields/columns while creating the table


create table cust_details (
cust_id int not null unique,
cust_name varchar(100),
cust_gender varchar (15),
cust_dob date,
cust_mobile_no int


)
;

--Accessing data present in table using SELECT clause

select 
	sum(e_salary) as total_salary,
	avg(e_salary) as avg_salary,
	min(e_salary) as minimum_salary,
	max(e_salary) as maximum_salary
from 
	[dbo].[emp_details]




select * from [dbo].[dummy_data]


select * from [dbo].[salary]









