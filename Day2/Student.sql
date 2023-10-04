use dac23;

Create table Student(
	stuId int,
    stuFirstName varchar(20),
    stuLastName varchar(20),
    age varchar(10),
    courseId int,
    courseName varchar(20),
    stuAddress varchar(50),
    stuPhoneNo varchar(20)
);

show tables;

desc Student;

#insert data
INSERT INTO Student (stuId, stuFirstName, stuLastName, age, courseId, courseName, stuAddress, stuPhoneNo)
VALUES
  (101, 'Shashank', 'Doe', '20', 1001, 'Python', '123 Betul', '555-1234'),
  (102, 'Aditi', 'Sharma', '22', 1002, 'Java', '456 Lonawala', '555-5678'),
  (103, 'Milind', 'Patle', '21', 1003, 'C++', '789 Gondia', '555-9876'),
  (104, 'Vaibhav', 'BadBoy', '23', 1004, 'DataScience', '101 Pune', '555-4321'),
  (105, 'Vaibhav', 'GoodBoy', '20', 1001, 'Python', '222 Kota', '555-8765'),
  (106, 'Michael', 'Brown', '22', 1002, 'Java', '333 Gurugram', '555-2345'),
  (107, 'Nikhil', 'chandlee', '21', 1003, 'C++', '444 Bombay', '555-7890'),
  (108, 'Mamu', 'Ander', '23', 1004, 'DataScience', '555 Jaipur', '555-6543'),
  (109, 'Olivia', 'Das', '20', 1001, 'Python', '666 Sundar Nagar', '555-7654'),
  (110, 'Michal', 'Jordan', '22', 1002, 'Java', '777  Pachmari', '555-8765');

select * from Student;

#SAFE MODEL REMOVAL
set sql_safe_updates=0;

UPDATE Student
SET stuLastName = 'Yadav'
WHERE stuId = 108;

select * from Student;

INSERT INTO Student (stuId, stuFirstName, stuLastName, age, courseId, courseName, stuAddress, stuPhoneNo)
VALUES (111, 'Harshal', 'Dhote', '23', 1004, 'DataScience', '762 Nagpur', '555-1234');

#Add the new column
ALTER TABLE Student
ADD stuPincode varchar(10);

#Update the pincode values for existing rows
UPDATE Student
SET stuPincode = CASE
    WHEN stuId = 101 THEN '442305'
    WHEN stuId = 102 THEN '440014'
    WHEN stuId = 103 THEN '678034'
    WHEN stuId = 104 THEN '400001'
    WHEN stuId = 105 THEN '673622'
    WHEN stuId = 106 THEN '377821'
    WHEN stuId = 107 THEN '726213'
    WHEN stuId = 108 THEN '212334'
    WHEN stuId = 109 THEN '535373'
    WHEN stuId = 110 THEN '572357'
    WHEN stuId = 111 THEN '440015'
  
END;


alter table Student
modify column stuPincode varchar(6);


