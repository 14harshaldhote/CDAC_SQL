use dac_sept23;
select * from employeee;
select * from employeee where salary>50000;
create index salary on employeee(salary);

drop index salary on employeee; 

CREATE TABLE CollegeStudents (
    EnrolNumber INT PRIMARY KEY,
    StudentName VARCHAR(255),
    CollegeName VARCHAR(255),
    UniversityName VARCHAR(255),
    Percentage DECIMAL(5, 2)
);

-- Insert 200 rows of sample data
INSERT INTO CollegeStudents (EnrolNumber, StudentName, CollegeName, UniversityName, Percentage)
VALUES
    (1001, 'John Doe', 'ABC College', 'XYZ University', 85.50),
    (1002, 'Jane Smith', 'DEF College', 'PQR University', 78.25),
    (1003, 'Rahul Sharma', 'GHI College', 'LMN University', 91.75),
    (1004, 'Priya Patel', 'JKL College', 'UVW University', 72.00),
    (1005, 'Amit Kumar', 'MNO College', 'STU University', 88.60),
    (1006, 'Sneha Gupta', 'PQR College', 'ABC University', 69.30),
    (1007, 'Rajesh Verma', 'UVW College', 'JKL University', 76.80),
    (1008, 'Neha Singh', 'XYZ College', 'GHI University', 95.25),
    (1009, 'Rajat Mehta', 'ABC College', 'PQR University', 81.40),
    (1010, 'Pooja Sharma', 'DEF College', 'LMN University', 89.20),
    (1011, 'Kiran Patel', 'JKL College', 'PQR University', 75.50),
    (1012, 'Sachin Kumar', 'ABC College', 'STU University', 90.75),
    (1013, 'Smita Sharma', 'DEF College', 'LMN University', 79.30),
    (1014, 'Vivek Verma', 'GHI College', 'XYZ University', 84.20),
    (1015, 'Neeta Singh', 'MNO College', 'PQR University', 87.90),
    (1016, 'Alok Patel', 'UVW College', 'JKL University', 73.60),
    (1017, 'Sneha Mehta', 'XYZ College', 'STU University', 92.75),
    (1018, 'Anil Sharma', 'GHI College', 'ABC University', 76.40),
    (1019, 'Preeti Singh', 'DEF College', 'LMN University', 88.20),
    (1020, 'Rohit Verma', 'JKL College', 'XYZ University', 81.75),
    (1021, 'Vikas Kumar', 'ABC College', 'PQR University', 79.90),
    (1022, 'Deepa Patel', 'DEF College', 'JKL University', 87.50),
    (1023, 'Suresh Verma', 'GHI College', 'XYZ University', 68.30),
    (1024, 'Mamta Singh', 'LMN College', 'UVW University', 93.25),
    (1025, 'Rakesh Sharma', 'PQR College', 'STU University', 74.60),
    (1026, 'Seema Gupta', 'ABC College', 'XYZ University', 85.20),
    (1027, 'Rajesh Mehta', 'DEF College', 'PQR University', 90.80),
    (1028, 'Nisha Patel', 'GHI College', 'LMN University', 79.75),
    (1029, 'Manoj Kumar', 'JKL College', 'UVW University', 82.10),
    (1030, 'Kavita Sharma', 'MNO College', 'STU University', 87.40),
    (1031, 'Amita Verma', 'XYZ College', 'ABC University', 70.25),
    (1032, 'Sanjay Singh', 'PQR College', 'JKL University', 91.60),
    (1033, 'Rahul Verma', 'ABC College', 'XYZ University', 76.90),
    (1034, 'Poonam Patel', 'DEF College', 'LMN University', 89.80),
    (1035, 'Vishal Kumar', 'GHI College', 'PQR University', 85.75),
    (1036, 'Sunita Sharma', 'STU College', 'ABC University', 72.60),
    (1037, 'Ramesh Mehta', 'UVW College', 'JKL University', 80.10),
    (1038, 'Neeraj Gupta', 'XYZ College', 'GHI University', 94.30),
    (1039, 'Rekha Singh', 'PQR College', 'STU University', 66.50),
    (1040, 'Amar Verma', 'ABC College', 'XYZ University', 88.90),
    (1041, 'Swati Patel', 'DEF College', 'PQR University', 82.70),
    (1042, 'Rajesh Kumar', 'GHI College', 'LMN University', 91.10),
    (1043, 'Mamta Verma', 'UVW College', 'STU University', 75.40),
    (1044, 'Vikram Singh', 'XYZ College', 'JKL University', 79.80),
    (1045, 'Rashmi Gupta', 'ABC College', 'XYZ University', 84.90),
    (1046, 'Rahul Verma', 'DEF College', 'PQR University', 73.30),
    (1047, 'Anita Patel', 'JKL College', 'LMN University', 89.60),
    (1048, 'Manish Kumar', 'GHI College', 'STU University', 92.80),
    (1049, 'Kusum Sharma', 'PQR College', 'XYZ University', 67.70),
    (1050, 'Rajat Verma', 'ABC College', 'JKL University', 87.20),
    (1051, 'Meera Singh', 'DEF College', 'GHI University', 75.90),
    (1052, 'Amit Sharma', 'LMN College', 'PQR University', 91.40),
    (1053, 'Nisha Verma', 'XYZ College', 'STU University', 78.70),
    (1054, 'Rakesh Kumar', 'PQR College', 'ABC University', 83.10),
    (1055, 'Sarika Patel', 'DEF College', 'UVW University', 69.50),
    (1056, 'Pradeep Sharma', 'JKL College', 'XYZ University', 85.90),
    (1057, 'Anjali Gupta', 'GHI College', 'STU University', 71.80),
    (1058, 'Sachin Verma', 'ABC College', 'JKL University', 94.00),
    (1059, 'Ritu Singh', 'DEF College', 'PQR University', 76.20),
    (1060, 'Amit Patel', 'PQR College', 'XYZ University', 88.50),
    (1061, 'Rajesh Verma', 'JKL College', 'LMN University', 82.60),
    (1062, 'Manju Sharma', 'ABC College', 'STU University', 90.30),
    (1063, 'Vijay Patel', 'DEF College', 'GHI University', 73.70),
    (1064, 'Sunita Verma', 'GHI College', 'PQR University', 84.60),
    (1065, 'Alok Kumar', 'PQR College', 'STU University', 89.10),
    (1066, 'Pooja Gupta', 'JKL College', 'XYZ University', 79.40),
    (1067, 'Suresh Sharma', 'ABC College', 'JKL University', 67.60),
    (1068, 'Swati Verma', 'DEF College', 'UVW University', 81.80),
    (1069, 'Vikas Verma', 'GHI College', 'XYZ University', 92.50),
    (1070, 'Meera Patel', 'PQR College', 'PQR University', 78.30),
    (1071, 'Amit Singh', 'JKL College', 'STU University', 85.60),
    (1072, 'Neha Sharma', 'XYZ College', 'ABC University', 70.80),
    (1073, 'Rajat Gupta', 'DEF College', 'LMN University', 88.70),
    (1074, 'Anita Verma', 'GHI College', 'JKL University', 76.10),
    (1075, 'Vikas Kumar', 'ABC College', 'XYZ University', 93.60),
    (1076, 'Kusum Patel', 'PQR College', 'STU University', 74.50),
    (1077, 'Sanjay Verma', 'DEF College', 'GHI University', 81.90),
    (1078, 'Sarika Sharma', 'JKL College', 'PQR University', 79.70),
    (1079, 'Manish Verma', 'XYZ College', 'LMN University', 85.20),
    (1080, 'Rahul Gupta', 'ABC College', 'STU University', 68.90),
    (1081, 'Rekha Verma', 'PQR College', 'XYZ University', 92.00),
    (1082, 'Pradeep Kumar', 'DEF College', 'JKL University', 71.70),
    (1083, 'Ritu Patel', 'GHI College', 'UVW University', 87.10),
    (1084, 'Vivek Verma', 'MNO College', 'STU University', 76.50),
    (1085, 'Meena Gupta', 'XYZ College', 'ABC University', 80.80),
    (1086, 'Sachin Patel', 'JKL College', 'PQR University', 94.70),
    (1087, 'Nidhi Verma', 'ABC College', 'GHI University', 89.40),
    (1088, 'Anil Kumar', 'DEF College', 'LMN University', 67.90),
    (1089, 'Preeti Sharma', 'UVW College', 'STU University', 83.70),
    (1090, 'Alok Verma', 'XYZ College', 'PQR University', 88.80),
    (1091, 'Rashmi Verma', 'ABC College', 'JKL University', 75.20),
    (1092, 'Sanjay Kumar', 'GHI College', 'XYZ University', 90.10),
    (1093, 'Mamta Gupta', 'LMN College', 'STU University', 79.60),
    (1094, 'Rahul Verma', 'PQR College', 'ABC University', 85.10),
    (1095, 'Kiran Kumar', 'JKL College', 'PQR University', 72.30),
    (1096, 'Neha Verma', 'ABC College', 'STU University', 91.30),
    (1097, 'Vikas Sharma', 'DEF College', 'JKL University', 68.40),
    (1098, 'Sarita Patel', 'GHI College', 'LMN University', 87.60),
    (1099, 'Amit Verma', 'UVW College', 'STU University', 78.40),
    (1100, 'Pooja Verma', 'XYZ College', 'ABC University', 82.90),
    (1101, 'Ramesh Kumar', 'PQR College', 'PQR University', 90.60),
    (1102, 'Nisha Gupta', 'ABC College', 'JKL University', 74.70),
    (1103, 'Manoj Verma', 'DEF College', 'XYZ University', 79.90),
    (1104, 'Meera Kumar', 'GHI College', 'LMN University', 84.80),
    (1105, 'Alok Gupta', 'JKL College', 'STU University', 89.30),
    (1106, 'Swati Singh', 'PQR College', 'PQR University', 72.90),
    (1107, 'Rajesh Kumar', 'ABC College', 'JKL University', 88.30),
    (1108, 'Neeraj Patel', 'DEF College', 'XYZ University', 66.70),
    (1109, 'Rekha Verma', 'GHI College', 'LMN University', 91.20),
    (1110, 'Vikas Verma', 'STU College', 'STU University', 76.70),
    (1111, 'Rahul Kumar', 'UVW College', 'ABC University', 82.50),
    (1112, 'Kavita Patel', 'XYZ College', 'JKL University', 70.10),
    (1113, 'Anil Verma', 'ABC College', 'XYZ University', 84.50),
    (1114, 'Preeti Gupta', 'DEF College', 'PQR University', 79.80),
    (1115, 'Sachin Verma', 'GHI College', 'STU University', 88.90),
    (1116, 'Neeta Sharma', 'PQR College', 'LMN University', 73.20),
    (1117, 'Rohit Verma', 'JKL College', 'UVW University', 92.30),
    (1118, 'Amar Kumar', 'ABC College', 'XYZ University', 85.80),
    (1119, 'Sneha Patel', 'DEF College', 'PQR University', 67.40),
    (1120, 'Vivek Verma', 'GHI College', 'JKL University', 89.50),
    (1121, 'Meera Verma', 'MNO College', 'ABC University', 76.80),
    (1122, 'Ramesh Gupta', 'PQR College', 'STU University', 82.40),
    (1123, 'Nidhi Patel', 'ABC College', 'XYZ University', 90.20),
    (1124, 'Manoj Verma', 'DEF College', 'PQR University', 72.80),
    (1125, 'Alok Kumar', 'JKL College', 'LMN University', 68.20),
    (1126, 'Sarita Verma', 'GHI College', 'STU University', 88.40),
    (1127, 'Rahul Sharma', 'XYZ College', 'JKL University', 87.70),
    (1128, 'Sunita Patel', 'ABC College', 'XYZ University', 71.50),
    (1129, 'Rohit Kumar', 'PQR College', 'STU University', 92.80),
    (1130, 'Rekha Verma', 'GHI College', 'ABC University', 79.60),
    (1131, 'Vikram Verma', 'PQR College', 'LMN University', 84.70),
    (1132, 'Anjali Sharma', 'JKL College', 'STU University', 66.60),
    (1133, 'Amit Kumar', 'ABC College', 'XYZ University', 81.90),
    (1134, 'Swati Verma', 'DEF College', 'PQR University', 89.30),
    (1135, 'Rahul Verma', 'GHI College', 'JKL University', 76.20),
    (1136, 'Kusum Kumar', 'XYZ College', 'STU University', 88.70),
    (1137, 'Rajesh Verma', 'PQR College', 'UVW University', 85.40),
    (1138, 'Nisha Patel', 'ABC College', 'XYZ University', 68.80),
    (1139, 'Sarita Kumar', 'DEF College', 'PQR University', 79.90),
    (1140, 'Manoj Kumar', 'GHI College', 'LMN University', 93.70),
    (1141, 'Preeti Sharma', 'UVW College', 'STU University', 74.40),
    (1142, 'Alok Verma', 'XYZ College', 'ABC University', 80.30),
    (1143, 'Rashmi Patel', 'DEF College', 'PQR University', 91.80),
    (1144, 'Vikas Kumar', 'JKL College', 'XYZ University', 77.30),
    (1145, 'Neha Verma', 'ABC College', 'LMN University', 85.70),
    (1146, 'Rahul Verma', 'PQR College', 'STU University', 69.80),
    (1147, 'Meera Patel', 'GHI College', 'JKL University', 89.10),
    (1148, 'Amit Sharma', 'DEF College', 'XYZ University', 78.20),
    (1149, 'Kavita Kumar', 'ABC College', 'PQR University', 73.90),
    (1150, 'Sachin Verma', 'JKL College', 'STU University', 86.60),
    (1151, 'Neeta Patel', 'PQR College', 'ABC University', 90.40),
    (1152, 'Rohit Sharma', 'GHI College', 'XYZ University', 85.60),
    (1153, 'Anil Kumar', 'UVW College', 'PQR University', 72.50),
    (1154, 'Poonam Verma', 'STU College', 'LMN University', 88.50),
    (1155, 'Sarita Singh', 'JKL College', 'STU University', 67.70),
    (1156, 'Rajesh Kumar', 'XYZ College', 'JKL University', 82.70),
    (1157, 'Rekha Verma', 'ABC College', 'GHI University', 79.10),
    (1158, 'Alok Patel', 'DEF College', 'PQR University', 91.70),
    (1159, 'Sunita Verma', 'GHI College', 'LMN University', 73.60),
    (1160, 'Rajat Kumar', 'ABC College', 'UVW University', 85.10),
    (1161, 'Anita Patel', 'XYZ College', 'STU University', 87.80),
    (1162, 'Rahul Verma', 'PQR College', 'JKL University', 70.20),
    (1163, 'Meera Verma', 'DEF College', 'XYZ University', 89.40),
    (1164, 'Vikas Kumar', 'JKL College', 'PQR University', 76.80),
    (1165, 'Nidhi Sharma', 'GHI College', 'LMN University', 92.60),
    (1166, 'Amit Verma', 'PQR College', 'STU University', 85.90),
    (1167, 'Preeti Patel', 'ABC College', 'ABC University', 74.30),
    (1168, 'Sachin Verma', 'JKL College', 'XYZ University', 81.10),
    (1169, 'Neeraj Sharma', 'DEF College', 'PQR University', 88.10),
    (1170, 'Rekha Kumar', 'GHI College', 'STU University', 83.80),
    (1171, 'Rohit Kumar', 'PQR College', 'JKL University', 89.60),
    (1172, 'Nisha Patel', 'ABC College', 'XYZ University', 78.10),
    (1173, 'Sarita Verma', 'DEF College', 'PQR University', 87.70),
    (1174, 'Amit Verma', 'GHI College', 'STU University', 71.40),
    (1175, 'Kusum Sharma', 'XYZ College', 'LMN University', 90.60),
    (1176, 'Rajesh Kumar', 'PQR College', 'STU University', 76.30),
    (1177, 'Vikas Verma', 'JKL College', 'XYZ University', 84.40),
    (1178, 'Meera Sharma', 'ABC College', 'JKL University', 91.50),
    (1179, 'Ramesh Kumar', 'DEF College', 'PQR University', 68.70),
    (1180, 'Anita Verma', 'GHI College', 'UVW University', 87.30),
    (1181, 'Sunita Patel', 'XYZ College', 'STU University', 78.20),
    (1182, 'Rajesh Kumar', 'PQR College', 'ABC University', 89.20),
    (1183, 'Rekha Verma', 'JKL College', 'JKL University', 75.70),
    (1184, 'Alok Kumar', 'ABC College', 'XYZ University', 92.10),
    (1185, 'Rahul Verma', 'DEF College', 'PQR University', 84.90),
    (1186, 'Sarika Sharma', 'GHI College', 'LMN University', 77.40),
    (1187, 'Vikas Verma', 'PQR College', 'STU University', 86.90),
    (1188, 'Manju Patel', 'JKL College', 'ABC University', 70.70),
    (1189, 'Kavita Verma', 'XYZ College', 'JKL University', 91.90),
    (1190, 'Sanjay Patel', 'PQR College', 'STU University', 75.80),
    (1191, 'Mamta Sharma', 'ABC College', 'XYZ University', 82.30),
    (1192, 'Rajat Kumar', 'DEF College', 'JKL University', 88.60),
    (1193, 'Amit Verma', 'GHI College', 'PQR University', 72.70),
    (1194, 'Swati Kumar', 'UVW College', 'LMN University', 84.10),
    (1195, 'Vivek Verma', 'PQR College', 'STU University', 89.80),
    (1196, 'Meera Patel', 'ABC College', 'ABC University', 68.60),
    (1197, 'Sachin Sharma', 'JKL College', 'XYZ University', 90.50),
    (1198, 'Ritu Verma', 'DEF College', 'PQR University', 76.50),
    (1199, 'Anil Verma', 'GHI College', 'JKL University', 83.60),
    (1200, 'Sarika Patel', 'XYZ College', 'STU University', 89.50);


select * from CollegeStudents;
select * from CollegeStudents where percentage>84.10;
create index perStudent on CollegeStudents(percentage);

drop index perStudent on CollegeStudents; 

####################################### Temporary table 

create temporary table table_id2 like CollegeStudents;
desc table_id2;
select * from table_id2;

create temporary table table_id3 select EnrolNumber ,CollegeName from CollegeStudents;
desc table_id3;
select * from table_id3;