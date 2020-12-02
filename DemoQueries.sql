create table demo(num1 number,num2 number(3,2));

insert into demo values(112.234,3.3456);
select * from demo;

create table demo1(num1 number(3));
insert into demo1 values(111.5);
select * from demo1;

create table demo2(x char(5));
insert into demo2 values('abcde');
select * from demo2;

create table demo3(x varchar2(5));
desc demo3;

create table demo4(x varchar(5));
desc demo4;

create table demo5(dob date);                /* yyyy-mm-dd */
insert into demo5 values(Date '2015-12-14');
select * from demo5;

select To_Date('December 01, 2020', 'MONTH DD,YYYY') from dual;

select sysdate from dual;  /* To see current date */

alter table emp rename to employee;   /* To rename the table */
select * from employee;
desc employee;

alter table employee add city varchar2(20);           /* Adding a single column */

alter table employee add(contact number,address varchar2(30));  /* Adding multiple columns in a table */

alter table employee modify address char(20);      /* Modifying a single column*/

alter table employee modify(contact number(10),address char(50));      /* Modifying a multiple column*/

alter table employee modify(address char(50),contact number(10)); 

alter table employee drop column contact; /* removing a column from table */

alter table employee drop(city,address); /* removing multi column from table */

alter table employee rename column fullname to Full_Name;

create table ta(n1 number,n2 number,n3 as (n1+n2));  /* n3 is virtual column */ 
insert into ta(n1,n2) values(3,5);
/*insert into ta values(3,5,4); Invalid */
select * from ta;

desc demo5;
drop table demo5;     /* dropping a table*/

desc demo4;
truncate table demo4;  /* truncating a table */

rename ta to cal;      /* To rename the table */
select * from cal;
desc cal;

create table result(name varchar2(20),physics number(3),chemistry number(3),maths number(3),english number(3),computer 
number(3),Percentage as (((physics+chemistry+maths+english+computer)/500)*100));

insert into result(name,physics,chemistry,maths,english,computer) values('Ajay',67,98,87,77,55);
insert into result(name,physics,chemistry,maths,english,computer) values('Sunil',77,88,87,72,55);

select * from result;

desc demo4;
select * from employee;

create table emp(name varchar2(20),age number);
create table emp1(name varchar2(20),age number);

                    insert all
                       into emp(name,age) values('Rohit',20)
                       into emp(name,age) values('Amit',22)
                       into emp(name,age) values('Gaurav',25)
                       
                       into emp1(name,age) values('Manish',20)
                       into emp1(name,age) values('Rahul',32)
                       into emp1(name,age) values('Vikas',35)
                    select * from dual;
                    
    select * from emp;
    select * from emp1;
    truncate table emp1;
    desc emp;
    
    create table student1(rollno number,name varchar2(20),city varchar2(20));
    
    insert into student1 values(101,'Ajay','Pune');
    insert into student1 values(102,'Amit','Delhi');
    insert into student1 values(103,'vijay','Pune');
    insert into student1 values(104,'Ajay','Mumbai');
    
    commit;

    truncate table student1;
    
    SELECT * FROM student1;  

    select name,city from student1;
    
    select city from student1;
   
    select DISTINCT city from student1;
    
    select DISTINCT name from student1;
    
    create table city(name varchar2(20) NOT NULL);
   
    truncate table city;
    
    alter table city add state varchar2(20);
    
    insert into city values('');   /* Can not be null , will not work */
    
    insert into city values('Pune','');
     
    select * from city;
    
    ==============================================================
    
    create table product1(pid number,pname varchar2(20));
    create table product2(pid number,pname varchar2(20));
    
    insert into product1 values(101,'Keyboard');
    insert into product1 values(102,'Mouse');
    insert into product1 values(103,'USB');
    insert into product1 values(104,'DVD');
    insert into product1 values(101,'Mobile');
    
    select * from product1;
    
    insert into product2(pid,pname) select pid,pname from product1; /* Copy records from one table into another table */
    
    select * from product2;
    
    ============================================
    
    select pname from product1 where pid = 102; /* condition : pid = 102 */
    select * from product1 where pid = 102;  
    select pid from product1 where pname = 'Mouse';   
    select pname,pid from product1 where pname = 'Mouse';   
    select * from product1 where pid = 101;
    select distinct pid,pname from product1; 
    select * from product1 where pid > 101; 
    select * from product1 where pid >= 101; 
    select * from product1 where pid < 101;
    select * from product1 where pid != 101;    /* != not equal to */
    select * from product1 where pid <> 101;    /* <> not equal to */
    
    ===========================================
    
    select * from employee;
    
    delete from employee where age=34;   /* delete specific record*/
    
    delete from employee;            /* delete all record*/
    
    ===========================================
    
    select * from product1;
    
    update product1 set pname='RAM' where pid=103;
    
    alter table product1 add price number;
    
    update product1 set price=1000;
    
    update product1 set price=2000 where pname='RAM';
    
    update product1 set price=15000 where pname='Mobile';
    
    update product1 set price=null;
    
    update product1 set price='';
    
    update product1 set price=500 where pid IN (101,104);
    
    update product1 set price=500 where pname IN ('Keyboard','DVD');
    
    update product1 set price=800 where pid NOT IN (101,104);
    
    ===================================================================
    
    select * from product1;
    
    select pid as Product_ID, pname as Product_Name from product1; /* Column Alias name : Product_Id, Product_Name */
    
    select s.pid,s.price from product1 s;     /* Table alias name : s */
    
    
    