-- Create database Homework_session04_03
create database Homework_session04_03;
-- Create table students
create table students(
	id serial primary key,
	full_name varchar(50),
	gender varchar(10),
	birth_year int,
	major varchar(50),
	gpa numeric(3,2)
);
select * from students;
insert into students(full_name, gender, birth_year, major, gpa) values
('Nguyễn Văn A', 'Nam', 2002, 'CNTT', 3.6),
('Trần Thị Bích Ngọc', 'Nữ', 2001, 'Kinh tế', 3.2),
('Lê Quốc Cường', 'Nam', 2003, 'CNTT', 2.7),
('Phạm Minh Anh', 'Nữ', 2000, 'Luật', 3.9),
('Nguyễn Văn A', 'Nam', 2002, 'CNTT', 3.6),
('Lưu Đức Tài', 'Nam', 2004, 'Cơ khí', null),
('Võ Thị Thu Hằng', 'Nữ', 2001, 'CNTT', 3.0);
-- insert data into students
insert into students(full_name, gender, birth_year, major, gpa) values
('Phan Hoàng Nam', 'Nam', '2003', 'CNTT', 3.8);
-- update data in students
update students
set gpa = 3.4
where full_name = 'Lê Quốc Cường';
-- delete data in students
delete from students where gpa is null;
-- show 3 students with gpa >= 3.0
select * from students where gpa >= 3.0 order by id asc limit 3 offset 0;
-- show distinct major in students
select distinct major from students;
-- show CNTT students, sorted in descending order by gpa, then in ascending order by name
select * from students where major = 'CNTT' order by gpa desc, full_name asc;
-- show students with first name as "Nguyễn"
select * from students where full_name ilike 'Nguyễn%';
-- show students with birth_year from 2001 to 2003
select * from students where birth_year between 2001 and 2003;