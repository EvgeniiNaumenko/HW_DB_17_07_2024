use [master];
go

if db_id('Academy') is not null
begin
	drop database [Academy];
end
go

create database [Academy];
go

use [Academy];
go

create table [Departments]
(
	[Id] int not null identity(1, 1) primary key,
	[Financing] money not null check ([Financing] >= 0.0),
	[Name] nvarchar(100) not null unique check ([Name] <> N'')
);
go

create table [Faculties]
(
	[Id] int not null identity(1, 1) primary key,
	[Dean] nvarchar(max) not null check ([Dean] <> N''),
	[Name] nvarchar(100) not null unique check ([Name] <> N''),
);
go

create table [Groups]
(
	[Id] int not null identity(1, 1) primary key,
	[Name] nvarchar(10) not null unique check ([Name] <> N''),
	[Rating] float not null check ([Rating] between 0 and 5),
	[Year] int not null check ([Year] between 1 and 5)
);
go

create table [Teachers]
(
	[Id] int not null identity(1, 1) primary key,
	[EmploymentDate] date not null check ([EmploymentDate] >= '1990-01-01'),
	[IsAssistant] bit not null default 0,
	[IsProfessor] bit not null default 0,
	[Name] nvarchar(max) not null check ([Name] <> N''),
	[Position] nvarchar(max) not null check ([Position] <> N''),
	[Premium] money not null check ([Premium] >= 0.0) default 0.0,
	[Salary] money not null check ([Salary] > 0.0),
	[Surname] nvarchar(max) not null check ([Surname] <> N'')
);
go

INSERT INTO Departments
VALUES (1000000, N'Cardiology'),
       (750000, N'Neurology'),
	   (500000, N'Pediatrics'),
       (1200000, N'Orthopedics'),
       (300000, N'Dermatology');
GO
INSERT INTO Faculties 
VALUES (N'Dr. John Smith', N'Interventional Cardiology'),
       (N'Dr. Jane Doe', N'Electrophysiology'),
       (N'Dr. Alan Brown', N'Heart Failure'),
	   (N'Dr. Emily White', N'Clinical Neurophysiology'),
       (N'Dr. Michael Green', N'Neurocritical Care'),
       (N'Dr. Sarah Black', N'Child Neurology'),
	   (N'Dr. Olivia Blue', N'General Pediatrics'),
       (N'Dr. Daniel Red', N'Neonatology'),
       (N'Dr. Grace Yellow', N'Pediatric Oncology'),
	   (N'Dr. Henry Gold', N'Sports Medicine'),
       (N'Dr. Emma Silver', N'Joint Replacement'),
       (N'Dr. Liam Bronze', N'Pediatric Orthopedics'),
	   (N'Dr. Mia Copper', N'Cosmetic Dermatology'),
       (N'Dr. Noah Iron', N'Dermatopathology'),
       (N'Dr. Sophia Steel', N'Pediatric Dermatology');

GO 
INSERT INTO Groups
VALUES (N'Cardio1', 4.5, 3),
       (N'Cardio2', 3.8, 2),
       (N'Cardio3', 4.9, 1),
	   (N'Neuro1', 4.2, 4),
       (N'Neuro2', 3.7, 5),
       (N'Neuro3', 4.3, 3),
	   (N'Pedia1', 3.9, 2),
       (N'Pedia2', 4.0, 3),
       (N'Pedia3', 3.8, 1),
	   (N'Ortho1', 4.4, 4),
       (N'Ortho2', 3.6, 2),
       (N'Ortho3', 4.1, 5),
	   (N'Derma1', 4.3, 3),
       (N'Derma2', 3.5, 1),
       (N'Derma3', 4.2, 4);
GO
INSERT INTO Teachers
VALUES ('2005-09-15', 0, 1, N'John', N'Professor of Cardiology', 1500.0, 18000.0, N'Smith'),
       ('2010-01-10', 1, 0, N'Emily', N'Assistant in Neurology', 500.0, 3000.0, N'White'),
	   ('1998-03-23', 0, 1, N'Robert', N'Professor of Pediatrics', 1100.0, 10000.0, N'Brown'),
       ('2015-06-12', 0, 0, N'Anna', N'Dermatologist', 350.0, 4000.0, N'Taylor'),
       ('2020-11-01', 1, 0, N'Michael', N'Orthopedic Assistant', 300.0, 6500.0, N'Johnson'),
	   ('2000-01-01', 1, 0, N'Bob', N'Assistant in Neurology', 450.0, 3500.0, N'Bobster'),
	   ('2008-04-20', 0, 0, N'Mary', N'Pediatrician', 200.0, 4500.0, N'Jones'),
       ('2012-09-05', 0, 0, N'William', N'Neurologist', 2500.0, 4800.0, N'Wilson'),
       ('2014-07-15', 0, 0, N'Elizabeth', N'Dermatologist', 300.0, 4200.0, N'Roberts'),
       ('2016-03-10', 0, 0, N'Christopher', N'Orthopedist', 200.0, 4300.0, N'Lee'),
       ('2019-01-25', 0, 0, N'Sophia', N'Cardiologist', 150.0, 4700.0, N'Young');

GO
--1. Вивести таблицю кафедр, але розташувати її поля у зворотному порядку.
SELECT * FROM Faculties ORDER BY Id DESC;
GO
--2. Вивести назви груп та їх рейтинги, використовуючи, як
--назви полів, що виводяться, “Group Name” та “Group Rating”
--відповідно.
SELECT Name AS 'Group Name', Rating AS 'Group Rating' FROM Groups;
GO
--3. Вивести для викладачів їхнє прізвище, відсоток ставки по
--відношенню до надбавки та відсоток ставки по відношенню
--до зарплати (сума ставки та надбавки).
SELECT 
    Surname,
    CAST(([Premium] / [Salary]) * 100 AS DECIMAL(5,2)) AS PremiumPercentage,
    CAST((([Salary] + [Premium]) / [Salary]) * 100 AS DECIMAL(5,2)) AS TotalPercentage
	FROM Teachers;
GO
--4. Вивести таблицю факультетів у вигляді одного поля у такому форматі: “The dean of faculty [faculty] is [dean].”.
SELECT 'The dean of faculty ' + [Name] + ' is ' + [Dean] + '.' AS FormatAuptup FROM Faculties;
GO
--5. Вивести прізвища викладачів, які є професорами та ставка
--яких перевищує 1050.
SELECT Surname FROM Teachers WHERE IsProfessor = 1 AND Salary>1050;
GO
--6. Вивести назви кафедр, фонд фінансування яких менший
--за 11000 або більше 25000.
SELECT Name FROM Departments WHERE Financing  BETWEEN 11000 AND 25000;
GO
--7. Вивести назви факультетів, окрім факультету “Computer
--Science”. 
SELECT Name FROM Faculties WHERE Name <> 'Sports Medicine';
GO
--8. Вивести прізвища та посади викладачів, які не є професорами.
SELECT [Name],[Surname] FROM Teachers WHERE IsProfessor = 0;
GO
--9. Вивести прізвища, посади, ставки та надбавки асистентів,
--у яких надбавка у діапазоні від 160 до 550.
SELECT [Surname],[Position],[Salary],[Premium] FROM Teachers WHERE Premium >160 AND Premium<550;
GO
--10. Вивести прізвища та ставки асистентів.
SELECT [Surname],[Salary] FROM Teachers WHERE IsAssistant = 1;
GO
--11. Вивести прізвища та посади викладачів, які були прийняті
--на роботу до 01.01.2000.
SELECT [Surname],[Position] FROM Teachers WHERE EmploymentDate = '2000-01-01';
GO
--12. Вивести назви кафедр, які в алфавітному порядку розміщуються до кафедри “Software Development”. Поле, що виводиться повинно мати назву “Name of Department”.
SELECT Name FROM Faculties ORDER BY Name;
GO
--13. Вивести прізвища асистентів, які мають зарплату (сума
--ставки та надбавки) не більше 1200.
SELECT Surname FROM Teachers WHERE IsAssistant = 1 AND Salary+Premium>1200; /* с моими засплатами все попадут))))*/
GO
--14. Вивести назви груп 5-го курсу, які мають рейтинг у діапазоні від 2 до 4.
SELECT Name From Groups WHERE Year = 5 AND Rating BETWEEN 2 AND 4;
GO
--15. Вивести прізвища асистентів зі ставкою менше 550 або
--надбавкою менше 200.
SELECT Surname FROM Teachers WHERE IsAssistant = 1 AND (Salary < 550 OR Premium< 200); 