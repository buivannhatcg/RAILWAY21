USE TestingSystem3;


INSERT INTO Department (DepartmentName) VALUES ('Marketing');
INSERT INTO Department (DepartmentName) VALUES ('Develop');
INSERT INTO Department (DepartmentName) VALUES ('QA');
INSERT INTO Department (DepartmentName) VALUES ('Sale');
INSERT INTO Department (DepartmentName) VALUES ('Human Resource Department');
INSERT INTO Department (DepartmentName) VALUES ('Training Department');
INSERT INTO Department (DepartmentName) VALUES ('Audit Department');
INSERT INTO Department (DepartmentName) VALUES ('Product Development Department');
INSERT INTO Department (DepartmentName) VALUES ('Accounting Department');
INSERT INTO Department (DepartmentName) VALUES ('Treasury Department');


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
INSERT INTO `Group`(GroupName,CreatorID)  VALUES('nhome',5) ;
INSERT INTO `Group`(GroupName,CreatorID)  VALUES('nhomf',1 );
INSERT INTO `Group`(GroupName,CreatorID)  VALUES('nhomg',2 );
INSERT INTO `Group`(GroupName,CreatorID)  VALUES('nhomh',3 );
INSERT INTO `Group`(GroupName,CreatorID)  VALUES('nhomk',4 );
INSERT INTO `Group`(GroupName,CreatorID)  VALUES('nhoml',5 );



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
INSERT INTO  groupaccount(GroupID,AccountID)
VALUES (6,1);
INSERT INTO  groupaccount(GroupID,AccountID)
VALUES (7,2);
INSERT INTO  groupaccount(GroupID,AccountID)
VALUES (8,3);
INSERT INTO  groupaccount(GroupID,AccountID)
VALUES (9,4);
INSERT INTO  groupaccount(GroupID,AccountID)
VALUES (10,5);



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
INSERT INTO question  (Content,CategoryID,TypeID,CreatorID)
VALUES ('cauhoi6',1,2,1);
INSERT INTO question  (Content,CategoryID,TypeID,CreatorID)
VALUES ('cauhoi7',2,1,2);
INSERT INTO question  (Content,CategoryID,TypeID,CreatorID)
VALUES ('cauhoi8',3,1,3);
INSERT INTO question  (Content,CategoryID,TypeID,CreatorID)
VALUES ('cauhoi9',4,2,4);
INSERT INTO question  (Content,CategoryID,TypeID,CreatorID)
VALUES ('cauhoi10',5,2,5);



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
INSERT INTO answer(Content,QuestionID,isCorrect)
VALUES('cau6',6,0);
INSERT INTO answer(Content,QuestionID,isCorrect)
VALUES('cau7',7,1);
INSERT INTO answer(Content,QuestionID,isCorrect)
VALUES('cau8',8,0);
INSERT INTO answer(Content,QuestionID,isCorrect)
VALUES('cau9',9,0);
INSERT INTO answer(Content,QuestionID,isCorrect)
VALUES('cau10',10,1);

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
INSERT INTO exam (ExamID,`Code`,Title,CategoryID,Duration,CreatorID)
VALUES (6,'made6','tieude6',1,6,1);
INSERT INTO exam (ExamID,`Code`,Title,CategoryID,Duration,CreatorID)
VALUES (7,'made7','tieude7',2,6,2);
INSERT INTO exam (ExamID,`Code`,Title,CategoryID,Duration,CreatorID)
VALUES (8,'made8','tieude8',3,6,3);
INSERT INTO exam (ExamID,`Code`,Title,CategoryID,Duration,CreatorID)
VALUES (9,'made9','tieude9',4,6,4);
INSERT INTO exam (ExamID,`Code`,Title,CategoryID,Duration,CreatorID)
VALUES (10,'made10','tieude10',5,6,5);


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
INSERT INTO examquestion (ExamID,QuestionID)
VALUES (6,6);
INSERT INTO examquestion (ExamID,QuestionID)
VALUES (7,7);
INSERT INTO examquestion (ExamID,QuestionID)
VALUES (8,8);
INSERT INTO examquestion (ExamID,QuestionID)
VALUES (9,9);
INSERT INTO examquestion (ExamID,QuestionID)
VALUES (10,10);




