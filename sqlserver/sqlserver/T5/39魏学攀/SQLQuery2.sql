create table student(
sid int primary key identity(1,1),
name varchar(8) not null check (len(name)>1),
sex char(2) not null default'男',
age smallint null,
sdept varchar(15) null
)
create table course(
cid int primary key identity(1,1),
name varchar(20) not null ,
cpno char(4) null,
credit tinyint null
)
create table SC(
scid int primary key identity(1,1),
sid int not null foreign key references student1(sid), 
cid int not null foreign key references course1(cid),
grade decimal(12,2)
)
insert student(name,sex,age,sdept) values('张三','男','20','sx4002')
insert student(name,sex,age,sdept) values('李四','女','21','JSJ')
drop table score
drop table student 
drop table  course
delete from student where sdept ='JSJ' and sex = '男'
delete from SC where Cid in (select Cid fromCourse where Cname=’数据库原理’)
update student set sdept = 'JSJ'
update student set age=age+1 and sex is '女' where name is '陈小明'
update score set corse = 93 where nane is '李文庆' 
update score set corse =corse-1 where cid = 2
select * from student where age between '19' and '21'
select * from student where name like '[_明]%'
select * from score where cid=1001 and score is null
select * from student where age>=25 and course in('JSJ','SX','WL')
select sum(name) from student where like'[明]%'
select avg(age),max(age) from SC where sid = 1
select cid,count(sid),max(score),min(score),avg(score)from score group by cid
select sum(name) from student where like'[明]%'
select avg(age) from SC where sid = 1
select cidmax(score),min(score),avg(score)from score group by cid
select sum(name) from student where like'[明]%'
select max(age) from SC where sid = 1
select avg(score)from score group by cid
select sum(name) from student where like'[明]%'
select avg(age),max(age) from SC where sid = 1
select cid,,max(score),min(score)from score group by cid
select sum(name) from student where like'[明]%'
select avg(age) from SC where sid = 1
select cidmax(score),min(score),from score group by cid
select sum(name) from student where like'[明]%'
select max(age) from student where sid = 1
