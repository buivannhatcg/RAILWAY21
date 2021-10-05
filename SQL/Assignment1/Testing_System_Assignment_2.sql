DROP DATABASE IF EXISTS Testing_System_Assignment_2;
CREATE DATABASE Testing_System_Assignment_2;
USE Testing_System_Assignment_2;

DROP TABLE IF EXISTS Department;
CREATE table Department(
Department_ID 			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Department_name 		NVARCHAR(50)
);

DROP TABLE IF EXISTS `Position`;
CREATE table `Position`(
Position_ID				INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Position_name	 		NVARCHAR(50) UNIQUE KEY
);

DROP TABLE IF EXISTS `Account`;
CREATe table `Account`(
	Account_ID			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	Email				NVARCHAR(50) UNIQUE KEY,
	Use_name			NVARCHAR(50) UNIQUE KEY,
	Full_name			NVARCHAR(50) NOT NULL,
	Department_ID 		INT UNSIGNED ,
	Position_ID			INT UNSIGNED,
	Create_date 		DATETIME DEFAULT NOW(),
    
    FOREIGN KEY (Position_id) REFERENCES `Position`(Position_ID)
);

DROP TABLE IF EXISTS `Group`;
CREATE table `Group`(
	Gruop_ID 			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	Gruop_Name 			NVARCHAR(50) NOT NULL,
	Creator_ID 			INT UNSIGNED UNIQUE KEY,
    CreateDate			DATETIME DEFAULT NOW()
    
);

DROP TABLE IF EXISTS GroupAccount;
CREATE TABLE GroupAccount(
	Group_ID	 		INT UNSIGNED,
	Account_ID 			INT UNSIGNED,
	JoinDate 			DATETIME DEFAULT NOW(),
    
    PRIMARY KEY(Group_ID,Account_ID),
	FOREIGN KEY(Account_ID) REFERENCES `Account`(Account_ID)
);

DROP TABLE IF EXISTS TypeQuestion;
CREATE table TypeQuestion(
	Type_ID 			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	Type_name 			ENUM('Essay','Multiple-Choice')
);

DROP TABLE IF EXISTS CategoryQuestion;
CREATE table CategoryQuestion(
	Category_ID		 	INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	Category_name		ENUM('Java','NET','SQL','Postman,','Ruby')
);

DROP TABLE IF EXISTS Question;
CREATE table Question(
Question_ID		 		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
content 				NVARCHAR(50),
Category_ID 			INT UNSIGNED UNIQUE KEY,
Type_ID					INT UNSIGNED NOT NULL,
Creator_ID 				INT UNSIGNED UNIQUE KEY,
Create_date 			DATETIME DEFAULT NOW(),

FOREIGN KEY(Category_ID) REFERENCES CategoryQuestion(Category_ID),
FOREIGN KEY(Type_ID) REFERENCES TypeQuestion(Type_ID)

);

DROP TABLE IF EXISTS Answer;
CREATE table Answer(
	Answer_ID	 		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	Content 			NVARCHAR(50) ,
	Question_ID 		INT UNSIGNED UNIQUE KEY,
	isCorrect 			BIT(1),
    
    FOREIGN KEY(Question_ID) REFERENCES Question(Question_ID)
);

DROP TABLE IF EXISTS Exam;
CREATE table Exam(
	Exam_id			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	`code`			NVARCHAR(50) NOT NULL,
	Title 			NVARCHAR(50) NOT NULL,
	Category_id 	INT UNSIGNED NOT NULL,
	Duration 		INT UNSIGNED NOT NULL,
	Creator_id 		INT UNSIGNED NOT NULL,
	Create_date 	DATETIME DEFAULT NOW(),
    
    FOREIGN KEY(Category_id)REFERENCES CategoryQuestion(Category_id)
);

DROP TABLE IF EXISTS ExamQuestion;
CREATE table ExamQuestion(
Exam_id				INT UNSIGNED,
Question_id 		INT UNSIGNED,

PRIMARY KEY(Exam_id,Question_id),
FOREIGN KEY(Exam_id)  REFERENCES Exam (Exam_ID),
FOREIGN KEY(Question_ID)  REFERENCES Question (Question_ID)

);