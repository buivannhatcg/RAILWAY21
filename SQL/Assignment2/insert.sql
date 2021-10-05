USE TestingSystem3;

INSERT INTO Department (DepartmentName) VALUES ('sale');
INSERT INTO Department (DepartmentName) VALUES ('Marketing');
INSERT INTO Department (DepartmentName) VALUES ('Develop');
INSERT INTO Department (DepartmentName) VALUES ('QA');
INSERT INTO Department (DepartmentName) VALUES ('nhansu');


INSERT INTO `Position` (PositionName) VALUES ('DEV');
INSERT INTO `Position` (PositionName) VALUES ('TEST');
INSERT INTO `Position` (PositionName) VALUES ('SCRUM_MASTER');
INSERT INTO `Position` (PositionName) VALUES ('PM');



INSERT INTO `Account` (Email,Username,FullName,DepartmentID,PositionID)
VALUES ('luongnx@gmail','luongnx','Nguyen Xuan Luong',1,1);
INSERT INTO `Account` (Email,Username,FullName,DepartmentID,PositionID)
VALUES ('vanb@gmail.com','vanb','buivanb',2,2);
INSERT INTO `Account` (Email,Username,FullName,DepartmentID,PositionID)
VALUES ('vanc@gmail.com','vanc','buivanc',4,4);
INSERT INTO `Account` (Email,Username,FullName,DepartmentID,PositionID)
VALUES ('vand@gmail.com','vand','buivand',3,3);
INSERT INTO `Account` (Email,Username,FullName,DepartmentID,PositionID)
VALUES ('vane@gmail.com','vane','buivane',3,2);




INSERT INTO `Group`(GroupName,CreatorID)  VALUES ('nhoma',1 );
INSERT INTO `Group`(GroupName,CreatorID)  VALUES('nhomb',2 );
INSERT INTO `Group`(GroupName,CreatorID)  VALUES('nhomc',3 );
INSERT INTO `Group`(GroupName,CreatorID)  VALUES('nhomd',4 );
INSERT INTO `Group`(GroupName,CreatorID)  VALUES('nhome',5 );

INSERT INTO  groupaccount(GroupID,AccountID)
VALUES (1,1);
INSERT INTO  groupaccount(GroupID,AccountID)
VALUES (2,2);
INSERT INTO  groupaccount(GroupID,AccountID)
VALUES (4,4);
INSERT INTO  groupaccount(GroupID,AccountID)
VALUES (5,5);
INSERT INTO  groupaccount(GroupID,AccountID)
VALUES (3,3);



INSERT INTO typequestion (TypeName)
VALUES ('ESSAY');
INSERT INTO typequestion (TypeName)
VALUES ('Multiple-choice');




INSERT INTO categoryquestion (CategoryName)
VALUES ('JAVA');
INSERT INTO categoryquestion (CategoryName)
VALUES ('NET');
INSERT INTO categoryquestion (CategoryName)
VALUES ('SQL');
INSERT INTO categoryquestion (CategoryName)
VALUES ('Postman');
INSERT INTO categoryquestion (CategoryName)
VALUES ('RUBY');

INSERT INTO question  (Content,CategoryID,TypeID,CreatorID)
VALUES ('cauhoi1',3,2,2);
INSERT INTO question  (Content,CategoryID,TypeID,CreatorID)
VALUES ('cauhoi2',2,1,1);
INSERT INTO question  (Content,CategoryID,TypeID,CreatorID)
VALUES ('cauhoi3',1,1,3);
INSERT INTO question  (Content,CategoryID,TypeID,CreatorID)
VALUES ('cauhoi4',4,2,4);
INSERT INTO question  (Content,CategoryID,TypeID,CreatorID)
VALUES ('cauhoi5',5,2,5);


INSERT INTO answer(Content,QuestionID,isCorrect)
VALUES('cau1',1,0);
INSERT INTO answer(Content,QuestionID,isCorrect)
VALUES('cau2',2,1);
INSERT INTO answer(Content,QuestionID,isCorrect)
VALUES('cau3',3,0);
INSERT INTO answer(Content,QuestionID,isCorrect)
VALUES('cau4',4,1);
INSERT INTO answer(Content,QuestionID,isCorrect)
VALUES('cau5',5,1);

INSERT INTO exam (ExamID,`Code`,Title,CategoryID,Duration,CreatorID)
VALUES (1,'made1','tieude1',1,6,1);
INSERT INTO exam (ExamID,`Code`,Title,CategoryID,Duration,CreatorID)
VALUES (2,'made2','tieude2',2,6,2);
INSERT INTO exam (ExamID,`Code`,Title,CategoryID,Duration,CreatorID)
VALUES (3,'made3','tieude3',3,6,3);
INSERT INTO exam (ExamID,`Code`,Title,CategoryID,Duration,CreatorID)
VALUES (4,'made4','tieude4',4,6,4);
INSERT INTO exam (ExamID,`Code`,Title,CategoryID,Duration,CreatorID)
VALUES (5,'made5','tieude5',5,6,5);


INSERT INTO examquestion (ExamID,QuestionID)
VALUES (1,2);
INSERT INTO examquestion (ExamID,QuestionID)
VALUES (2,1);
INSERT INTO examquestion (ExamID,QuestionID)
VALUES (3,3);
INSERT INTO examquestion (ExamID,QuestionID)
VALUES (4,4);
INSERT INTO examquestion (ExamID,QuestionID)
VALUES (5,5);



