DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;

DROP TABLE IF EXISTS Department;
CREATE table Department(
Department_id 		int(50),
Department_name 	varchar(50)
);

DROP TABLE IF EXISTS `Position`;
CREATE table `Position`(
Position_id			 int(50),
Position_name 		varchar(50)
);

DROP TABLE IF EXISTS `Account`;
CREATe table `Account`(
	Account_id 		int(50),
	Email			varchar(50),
	Use_name		varchar(50),
	Full_name		varchar(50),
	Department_id 	int(50),
	Position_id		int(50),
	Create_date 	date
);

DROP TABLE IF EXISTS `Group`;
CREATE table `Group`(
	Gruop_id 		int(50),
	GroupName		int(50),
	CreatorID 		int(50),
    CreateDate		date
);

DROP TABLE IF EXISTS GroupAccount;
CREATE TABLE GroupAccount(
	Group_id 		int(50),
	Account_id 		int(50),
	JoinDate 		date
);

DROP TABLE IF EXISTS TypeQuestion;
CREATE table TypeQuestion(
	Type_id 		int(50),
	Type_name 		varchar(50)
);

DROP TABLE IF EXISTS CategoryQuestion;
CREATE table CategoryQuestion(
	CAtegory_id 	int(50),
	Category_name	varchar(50)
);

DROP TABLE IF EXISTS Question;
CREATE table Question(
Question_id 		int(50),
content 			varchar(50),
Category_id 		int(50),
Type_id				int(50),
Creator_id 			int(50),
Create_date 		date
);

DROP TABLE IF EXISTS Answer;
CREATE table Answer(
	Answer_id 		int(50),
	Content 		varchar(50),
	Question_id 	int(50),
	isCorrect 		varchar(50)
);

DROP TABLE IF EXISTS Exam;
CREATE table Exam(
	Exam_id			int(50),
	`code`			Varchar(50),
	Title 			varchar(50),
	Category_id 	int(50),
	Duration 		INT(50),
	Creator_id 		int(50),
	Create_date 	date
);

DROP TABLE IF EXISTS ExamQuestion;
CREATE table ExamQuestion(
Exam_id				int(50),
Question_id 		int(50)
);