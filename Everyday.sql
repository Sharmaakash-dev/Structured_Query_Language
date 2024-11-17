Create database Toman;           #ye use krte hai database bnane ke liye 
use toman;                       #ye use krte hai ye btane ke liye ki hm kis database mai kaam krna chahte hai  iske bina koi bhi coderun mt krna 
# ye command use krte hai table bnane ke liye ki table ka naam kya hai ,uske clumn ka naam aur datatype etc..
#datatype vo hota hai jo ye btate hai ki hmare column ki values kessi hongi ki vo numbsr honge ya number/letter ya date hai ya etc...
Create table kurokawa(               
   id INT,
   name varchar(50),
   age INT,
   gender varchar(1),
   phone varchar(10),
   city varchar(15)
   );
#ye command use hoti hai table mai values insert krne ke.. esse tu apne table mai values insert kr skta hai...
   insert into kurokawa(id,name,age,gender,phone,city)
   values(1,"Ram Kumar",19,"M","4022155","Agra"),
			(2,"Sarta kumari",21,"F","4034421","Delhi"),
			(3,"Salman Khan",20,"M","4056221","Agra"),
			(4,"Juhi Chawla",18,"F","4098621","Bhopal"),
			(5,"Anil Kapoor",22,"M","405221","Agra"),
			(6,"John  Abraham",21,"M","4013776","Delhi");	
#ye commmand hotii hai table ke column check krne ke lye  pehle select fhir jo column dekhna hai uska naam fhir konsi table se dekhna hai uska naam...
	Select id as "student id" , name as "student name" from kurokawa;
    Select id as student_id , name as student_name from kurokawa;
    Select name from kurokawa;
    Select id,name from kurokawa;
    select*from kurokawa;
#alter table use krte hai column add,modify,delete,changing datatype,changing column postition,renaming table in ke liye mainly use krte hai  
 #pehle alter table aur table ka naam fhir add aur column ka naam jo addd krna hai aur uskka datatype   
   alter table kurokawa add salary varchar(200);
#alter table table ka naam fhir modify jis table ki positionn ya datatype jo krni ho kr skte ho
    Alter table kurokawa modify salary int after name;
	Alter table kurokawa add unique(name);
#ab aate hai where clause ki hme kha se data dekhnna hai/hme kha se output chahiye
#select jo bhi column hme chahiye fhir table ka name aur fhir where kha se jha pr gender hmara male hai vo hmare pass aaye...
    Select name from kurokawa Where gender = "M";
    Select* from kurokawa Where gender = "M";
#select sare column fhir kis table se chahiye uss table ka naam fhir where hme chiye vo data jinme age 21 se bdi ho....
    Select * from kurokawa Where age >= 21;
    Select*from kurokawa Where age<21;
#select saari values from tale ka naame jha pr age 18 se 21 hai uske alwa nhi chahiye hme...
    Select* from kurokawa where age between 18 and 21;
#not mtlb iske alawa baki chaiye 18 se 21 ke alawa hme dikahyega..
    Select* from kurokawa where age not between 18 and 21;
	Select* from kurokawa where id between 2 and 5;
#jha pr naame ke bich mai  a aur k ho..
    Select *from kurokawa where name between "A" and "k";
#ab aata hai like operator ye pattern match krnne ke liye hote hai jese ki isme 
#select sarri values chaiye from table ka name where jha pr name ho  like s% s se suru ho aur aage kitne bhi words ho ya kuch bhi ho usse mtlb nhi hai uske liye % lgate hai ..
	Select* from kurokawa where name like "s%";
# select sari values chahiye jha pr name __h% mtlb ki start mai koi bhi 2 character ho pr 3rd pr h hona chaiye aur uske baad kuch bhi ho ...
    Select* from kurokawa where name like "__h%";
# isme bola gya hai ki starting mai kuch bhi ho name pr end mai n hona chaiye...
    Select* from kurokawa where name like "%n";
#isme bola gya hai ki starting mai kuch bhi ho end mai kuch ho hme mtlb nhi bich mai khi bhi a hona chahiye bs...
    Select* from kurokawa where name like "%a%";
    Select* from kurokawa where name like "%ta%";
    Select* from kurokawa where phone like "%21";
#isme bola gya hai not like mtlb ki iske alwa jo bhi ho .. run krke dekho pta chlega 
	Select* from kurokawa where name not like "r%";
#ab aate hai regexp like ki trh pattern ke liye hote hai but ye like se jyada faydemnd hota hai isme jyada options hote hai find krne ke liye.. 
#like mai bs 2 hi the % aur _ pr isme usse jyada hai jesee ki niche hai 
# select sari values chaiye fhir where kha se chahiye name se regexp ra mtlb ra hona chaiye uss name mai abhi hmne ye nhi bola ki kha hona chahiye anywhere in the name..
	Select* from kurokawa where name REGEXP "ra";
#^ is sign ka mtlb hota hai stating mai jo character ya jo element chaiye jese ^ra hme ra hona chaiye starting mai aagee kuch bhi ho hme mtlb nhi..
	Select* from kurokawa where name REGEXP "^ra";
#$ ka mtlb hota hai end mai ye hona chahiye jese an$ ki kuch bhi ho aage mtlb nhi end mai an hona chahiye.
	Select* from kurokawa where name REGEXP "an$";
#ab aata hai pipe yani ki ye=|  iska kam hota hai elements select krna ek sath jitte hm chahte hai ..
	Select* from kurokawa where name REGEXP "ram|kapoor|khan";
#ab hm isme ye bhi kr skte hai ki starting kisse honi chaiyye fhir ending bhi de skte hai ..
	Select* from kurokawa where name REGEXP "^ram|kapoor|^khan";
	Select* from kurokawa where name REGEXP "^ram|kapoor|khan$";
    Select* from kurokawa;
#ab aata hai order by command ki dataset ko order mai dekhna ya to ascending ya to descending
# select saari values chaiye from table ka naam order by jiska aap order chahte ho jese ki yha order ka chahta hun mai to we can see
    select *from kurokawa order by name;
#by default agr hm order by ke aage na likhe kuch ki kis order mai chaiye to vo asccending hi dega hmesa descending ke liye hme likhna hoga desc
	select *from kurokawa order by name asc;
    select *from kurokawa order by name desc;
    select *from kurokawa order by name ;
#hm ek sath do column mai order by lga skte hai pr ye hmesha pehle column mai order bby lgata hi fhir dusre pr 
    select *from kurokawa order by name ,city;
    select *from kurokawa order by city ,name;
	select *from kurokawa order by city ,name desc;
#hm odery by ke sath where bhi lga skte hai ki kya dekhna hai aur konse orde pr 
	select *from kurokawa where age>=19 order by name desc;
#ab aata hai distinct mtlb bhin bhin prkar ke ye same entries ko ek hi baar dikhata  hai ye tb use kre jb ye dekhna ho ki hmare paas konsi konsi entries hai..
    select distinct age from kurokawa;
#hm distinct ke sath order bhi lga skte hai jese ki  distinctt aagee alg alg age dukhaye jo mere pass hai vo bhi order wise ab tumhari mrzi hai asc mai lo ya desc
    select distinct age from kurokawa order by age ;
#ese hi hm ek sath where distinct aur order by lga skte hai.. jis chiz ki hme requirement hai hm chiz ko dekh ske using multiple commands..
	select distinct age from kurokawa where age>=19 order by age desc;
# ab hai limit mtlb data ko limit mai krna ki hme itna chaiye to vo utna hi show krega na jyada na km...
    select *from kurokawa limit 2;
#ab 2,2 ka mtlb hai 2 ke baad ke 2 limit bs 
	select *from kurokawa limit 2,2;
    select *from kurokawa limit 5,3;
    select *from kurokawa where city="Agra" limit 2;
    select *from kurokawa where city="Agra" order by name limit 3;
	select *from kurokawa where city="Agra" order by name limit 2,1;
	select *from kurokawa where city="Agra"  limit 2,1;
	select *from kurokawa where city="Agra" order by name limit 3;
#count use hota hai ki kitni entries hai unhe count krne ke liye..baki sb tum dekh kr smjh jaoge 
    select count(*)from kurokawa;
	select count(name)from kurokawa;
    select count(distinct city)from kurokawa;
    select max(age)from kurokawa;
    select max(age) as maximum_age from kurokawa;
    select min(age) as minimum_age from kurokawa;
    select avg(age) as average_age from kurokawa;
    select sum(age) as sum_of_ages from kurokawa;
    select 5+6 ;
    select 5+6 as Total_sum;
    select 15/3 as divide ;
    select 16%3 as divide ;
select id,name, (age+5) as "New_age" from kurokawa;
select pi();
select round(pi(),2);
select round(14.3);
select round(14.6);
select ceil(14.3);
select floor(14.3);
select pow(3,4);
select sqrt(64);
select sqrt(5),round(sqrt(5),2);
select abs(-2.25);
select abs(-2);
select abs(2);
select abs(2.25);
select sign(25);
select sign(-25);
select rand();
select rand()*100;
select id, upper(name) as Name from kurokawa;
select id, ucase(name) as Name from kurokawa;
select id, lcase(name) as Name from kurokawa;
select id, name, character_length(name) as Length from kurokawa;
select id, name, char_length(name) as Length from kurokawa;
select id, name, length(name) as Length from kurokawa;
select id, name, character_length(name) as Length from kurokawa limit 3;
select id, name, character_length(name) as Length from kurokawa where age>16;
select concat(id, name) as Concat from kurokawa;
select concat(id," ",name) as Concat from kurokawa;
select concat(age,"_",name) as Concat from kurokawa;
select concat("Sahil","-","Bagri") as Name;
select "Sahil-17" as name;
select concat("Sahil","-",17) as Name;
select upper("Sahil-17") as name;
select ucase("Sahil-17") as name;
select upper(concat("Sahil","-",17)) as Name;
select concat_ws("-","Sahil","Bagri",17) as Name;
select concat_ws("&","Sahil","Bagri","M") as Name;
select "      Sahil Bagri         " as Name;
select ltrim("      Sahil Bagri         ") as Name;
select rtrim("      Sahil Bagri         ") as Name;
select trim("      Sahil Bagri         ") as Name;
select ("      Sahil Bagri         ") as Name;
select position("world"in "Hello world") as position;
select position("o"in "Hello world") as position;
select instr("Hello world", "ell") as instring;
select locate("ell", "Hello world") as location;
select locate("l", "Hello world",3) as location;
select locate("l", "Hello world",5) as location;
select locate("l", "Hello world",7) as location;
select locate("l", "Hello world",11) as location;
select locate("a", "Toman",1) as location;
select substring( "Hello world",3) as Substring;
select substring("Hello world",5) as substring;
select substring("Hello world",-3,1) as substring;
select substring("Neema Jha",-6,3) as substring;
select mid("Neema Jha",-6,3) as substring;
select substring("Neema Jha",2,6) as substring;
select substring_index("www.neemajha.net",".",1) as substring_indexing;
select substring_index("www.neemajha.net",".",-1) as substring_indexing;
select substring_index("www.neemajha.net","j",1) as substring_indexing;
select substring_index("www.neemajha.net","e",2) as substring_indexing;
select left("Neema jha",3) as n;
select right("Neema jha",3) as ri;
select rpad("Neema jha",20,"-") as ne;
select lpad("Neema jha",20,"&")as new;
select reverse("Neema jha");
select replace("Neema Jha","Jha","MAM");
select replace("Neema Jha neema Jha ","Jha","MAM");
select strcmp("Neema Jha","neema Jha");
#Left string is equal to right 
select strcmp("Neema Jha","neema");
#left string is greater tham right
select strcmp("Naman","Naman singh chauhan");
#left string is smaller than right 
select field ("a","X","a","k");
select field ("a","X","b","k");
select field (5,2,4,3,7,2,0,5);
select field ("a","X","a","k");
select field ("anil","Xavier","Anil","karan");
select find_in_set("anil","Xavier,anil,karan");
select hex("neema jha");
select space(100);
select format(234.343,2);
select current_date();
select curdate();
select sysdate();
select now();
select date("2019-10-15 09:03:21");
select month("2019-10-15 09:03:21");
select monthname("2019-10-15 09:03:21");
select year("2019-10-15 09:03:21");
select quarter("2019-10-15 09:03:21");
select day("2019-10-15 09:03:21");
select last_day ("2019-02-02 09:34:21");
select dayname("2019-02-02 09:34:21");
select dayofmonth("2019-02-02 09:34:21");
select dayofweek("2019-02-02 09:34:21");
select dayofyear("2019-02-02 09:34:21");
select week("2019-02-02 09:34:21");
select weekday("2019-02-02 09:34:21");
select extract(month from "2019-10-05 09:34:21");
select adddate("2019-02-02", Interval 10 day);
select adddate("2019-02-02", Interval 1 month);
select adddate("2019-02-02", Interval 5000 minute);
select makedate(2024,10);
select subdate("2019-10-15", Interval 1 day);
select current_time();
select current_timestamp();
select localtime();
select localtimestamp();
select time ("2019-10-15 09:03:21");
select minute ("2019-10-15 09:03:21");
select hour ("2019-10-15 09:03:21");
select timediff("05:01:23", "09:03:21");
#yha pr suru krte hai group functionn ek new database bna lo aur table bna lo so lets get started 
use company;
select distinct product_name from product ;
select count(distinct product_name)  from product;
#group by use krte hai column ka group bnane ke liye ki is group ke naam ki etries ek sath aa jayengi then aage aage===
select product_name, sum(quantity) as "Total Quantity" from product group by product_name;
select product_name, avg(price) from product group by product_name;
select region, count(sale_id) from product group by region;

select region, sum(quantity) from product group by region;
select region, sum(quantity) from product group by region having sum(quantity)>10;
Select product_name, sum(quantity*price) as"Total sales" from product group by product_name;
Select region, sum(quantity*price) as"Total sales" from product group by region having sum(quantity*price);
select product_name, avg(quantity) as "Average Quantity" from product group by product_name having avg(quantity)>4;
select region , count(distinct product_name) from product group by region;
select product_name, sum(quantity*price) as "Total sales" from product group by product_name having sum(quantity*price) limit 1;

create database teacher;
use teacher;
create table nahi (
student_id int primary key,
course_name varchar(20)
);

insert into nahi(student_id,course_name)
values(102,"English"),
       (103,"Math"),
       (104,"Science"),
       (105,"CS");
       
create table sahi (
student_id int primary key,
student_name  varchar(20)
);
 insert into sahi (student_id,student_name)
 values(101,"sunit"),
	   (102,"sahil"),
       (103,"aman");

use teacher;
select nahi.student_id,student_name,course_name from sahi Inner Join nahi on sahi.student_id = nahi.student_id;

select nahi.student_id,student_name,course_name from sahi Left Join nahi on sahi.student_id = nahi.student_id;

select nahi.student_id,student_name,course_name from sahi right Join nahi on sahi.student_id = nahi.student_id;

create database joins;
use joins;
drop database joins;
create table employee(
emp_id int primary key auto_increment,
emp_name varchar(50),
dept_id int,
salary int);

insert into employee(emp_name,dept_id,salary)
values("Alice",101,6000),
      ("Bob",102,7000),
      ("Charlie",103,8000),
      ("David",101,7500),
      ("Eve",102,8500);

create table departments(
dept_id int,
dept_name varchar(50));

insert into departments(dept_id,dept_name)
values(101,"HR"),
      (102,"Sales"),
      (103,"IT"),
      (104,"Marketing");
      
create table projects(
project_id int,
project_name varchar(30),
dept_id int);

insert into projects(project_id,project_name,dept_id)
values(1,"Project A", 101),
      (2,"Project B",102),
      (3,"Project C",103),
      (4,"Project D",104);
      
select employee.emp_name,dept_name from departments Inner Join employee on departments.dept_id = employee.dept_id;
#select column from table inner/left/right join table2 on coulmns;

select employee.emp_name,departments.dept_name from departments Left Join employee on departments.dept_id = employee.dept_id;

select employee.emp_name,departments.dept_name from employee Left Join departments on departments.dept_id = employee.dept_id;

select employee.emp_name as "employee name",departments.dept_name as "department name" from employee Inner Join departments on departments.dept_id = employee.dept_id;

select employee.emp_name,departments.dept_name from employee inner join departments on employee.dept_id = departments.dept_id  where dept_name="IT"and salary>7500;

select count(emp_id),departments.dept_name as"dept_name"  from employee Inner Join departments on employee.dept_id = departments.dept_id group by dept_name;

select sum(salary),departments.dept_name as"dept_name"  from employee Inner Join departments on employee.dept_id = departments.dept_id group by dept_name;
 
 SELECT departments.dept_id, departments.dept_name FROM departments LEFT JOIN employee ON departments.dept_id = employee.dept_id WHERE Employee.dept_id IS NULL;
 
 select employee.emp_name,projects.project_name from employee inner join projects on employee.dept_id=projects.dept_id;
 
 select employee.emp_name,projects.project_name from employee inner join  departments on departments.dept_id = employee.dept_id inner join projects on employee.dept_id=projects.dept_id where departments.dept_name="HR";
 
 