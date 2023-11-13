CREATE DATABASE offline_course_management_system

USE offline_course_management_system

CREATE TABLE student(
  roll INT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  age INT
  );
  
  CREATE TABLE teacher(
  teacher_id INT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  age INT,
  degree VARCHAR(50)
  );
  
CREATE TABLE course(
   course_id INT PRIMARY KEY,
   title VARCHAR(100)
   );
   
CREATE TABLE enrollment (
     roll INT,
     course_id INT,
     joining_date DATE,
     PRIMARY KEY (roll, course_id),
     CONSTRAINT FOREIGN KEY (roll) REFERENCES student(roll),
	 CONSTRAINT FOREIGN KEY (course_id) REFERENCES course(course_id)
 );
 
 CREATE TABLE course_taking(
  teacher_id INT,
  course_id INT,
  payment_amount INT,
	 CONSTRAINT FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id),
	 CONSTRAINT FOREIGN KEY (course_id) REFERENCES course(course_id)
);
  



    
   



