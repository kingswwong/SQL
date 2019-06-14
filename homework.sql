create database student_examination_sys;

drop table if exists student;

create table student(
	id VARCHAR(1000) PRIMARY KEY not null,
	name VARCHAR(30) not null, 
	age int,sex CHAR(2) 
);

drop table if exists subject;

create table subject(
	id VARCHAR(1000) PRIMARY KEY not null,
	subject VARCHAR(30) not null, 
	teacher VARCHAR(30),
	description VARCHAR(2000) 
);

drop table if exists score;

create table score(
  id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  student_id VARCHAR(1000) NOT NULL ,
  subject_id VARCHAR(1000) NOT NULL ,
  score DOUBLE NOT NULL ,
  FOREIGN KEY (student_id) REFERENCES student(id),
  FOREIGN KEY (subject_id) REFERENCES subject(id)
)


insert into student values ('001', '张三', 18, '男'),('002', '李四', 20, '女');

insert into subject VALUES ('1001', '语文', '王老师', '本次考试比较简单'), ('1002', '数学', '刘老师', '本次考试比较难');

insert into score(student_id, subject_id, score) VALUES ('001', '1001', 80),('002', '1002', 60),('001', '1001', 70),('001', '1002', 60.5);