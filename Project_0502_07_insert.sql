USE BUDT702_Project_0502_07

--SQL	insert	data:
INSERT INTO [Smith.Requirement] VALUES 
	('101', 3.0, NULL),
	('102', 3.4, 315),
	('103', 3.4, 315),
	('104', 3.5, 322),
	('105', 3.0, NULL),
	('106', 3.0, 310),
	('107', 3.0, 315),
	('108', 3.0, NULL);


INSERT INTO [Smith.Program] VALUES 
	('121','Accounting', 'STEM', 18, 'https://www.rhsmith.umd.edu/programs/business-masters/academics/accounting','101'),
	('129', 'Business Analytics', 'STEM', 18, 'https://www.rhsmith.umd.edu/programs/business-masters/academics/business-analytics-person','102'),
	('130', ' Finance', 'STEM', 18, 'https://www.rhsmith.umd.edu/programs/business-masters/academics/finance','103'),
	('131', 'Information Systems', 'STEM', 18, 'https://www.rhsmith.umd.edu/programs/business-masters/academics/information-systems','104'),
	('230',  'Management Studies', 'Non-stem', 12, 'https://www.rhsmith.umd.edu/programs/business-masters/academics/management-studies-person','105'),
	('234', 'Marketing Analytics', 'STEM', 18, 'https://www.rhsmith.umd.edu/programs/business-masters/academics/marketing-analytics','106'),
	('301', 'Quantitative Finance', 'STEM', 18, 'https://www.rhsmith.umd.edu/programs/business-masters/academics/quantitative-finance','107'),
	('312', 'Supply Chain Management', 'STEM', 18, 'https://www.rhsmith.umd.edu/programs/business-masters/academics/supply-chain-management','108');



INSERT INTO [Smith.Faculty] VALUES 
	('178923894', 'Tejwansh', 'Anand', 'M', 'Academic Director', 'tejanand@umd.edu', Null),
	('178943793', 'John', 'Bono', 'M', 'Associate Clinical Professor', 'jbono@umd.edu', '178923894'),
	('134943793', 'Adam', 'Lee', 'M', 'Associate Clinical Professor', 'adamlee@umd.edu', '178923894'),
	('129307389', 'Sujin', 'Kim', 'F', 'Associate Clinical Professor', 'kimsj22@umd.edu', '178923894'),
	('123948392', 'Lauren', 'Rhue', 'F', 'Associate Professor', 'lrhue@umd.edu', '178923894'),
	('129839472',  'Kunpeng', 'Zhang', 'M', 'Associate Professor', 'kpzhang@umd.edu', '178923894'),
	('102930291', 'Kislaya', 'Prasad', 'M', 'Research Professor', 'kprasad@umd.edu', '178923894'),
	('192837462', 'Emanuel', 'Zur','M', 'Academic Director', 'ezur@umd.edu', Null),
	('129384872', 'Sean', 'Cao', 'M', 'Research Professor', 'scao824@umd.edu', '192837462'),
	('123984756', 'Jon', 'Crocker', 'M', 'Clinical Professor', 'jcrocker@umd.edu', '192837462'),
	('192839472', 'Jeffrey', 'Milton', 'M', 'Associate Area Chair', 'jmilton@umd.edu', '192837462'),
	('182736455', 'Stacey', 'Ferris', 'F', 'Adjunct Professor', 'sferris4@umd.edu', '192837462'),
	('174839282', 'Michael', 'Kimbrough', 'M', 'Area Chair', 'mkimbrou@umd.edu', '192837462'),
	('198347621', 'James', 'McKinney', 'M', 'Associate Area Chair', 'jmckinne@umd.edu', '192837462'),
	('156738294', 'Patrick', 'McNamee', 'M', 'Lecturer', 'pmcname1@umd.edu', '192837462'),
	('126447738', 'Suresh', 'Acharya', 'M', 'Academic Director', 'suresh12@umd.edu', null),
	('924849298', 'Jessica', 'Clark', 'F', 'Assistant Professor', 'jmclark@umd.edu', '126447738'),
	('294746261', 'Zhilong', 'Chen', 'M', 'Professor', 'zlchen@umd.edu', '126447738'),
	('389485727', 'Yi', 'Xu', 'M', 'Associate Professor', 'yxu1@umd.edu', '126447738'),
	('995885783', 'Xiaojia','Guo', 'F', 'Assistant Professor', 'xjguo@umd.edu', '126447738'),
	('475737389', 'Michael', 'Cichello', 'M', 'Academic Director', 'mcichell@umd.edu', null),
	('478573874', ' Serhiy', 'Kozak', 'M', 'Assistant Professor', 'skozak@rhsmith.umd.edu', '475737389'),
	('498596788', 'Sarah', 'Kroncke', 'F', ' Senior Lecturer','skroncke@rhsmith.umd.edu', '475737389'),
	('954895743','Liu', 'Yang', 'F', 'Associate Professor', 'lyang1@umd.edu', '475737389'),
	('094938492', 'Russell','Wermers', 'M', 'Endowed Chair', 'wermers@umd.edu', '475737389'),
	('485834747', 'Rellie', 'Rozin', 'F','Academic Director', 'rellie@umd.edu', null),
	('394985737', 'Nicole', 'Coomber', 'F', 'Assistant Dean', 'ncottre@umd.edu', '485834747'),
	('950685734', 'Jon', 'Crocker', 'M', 'Clinical Professor', 'jcrocker@umd.edu', '485834747'),
	('006949983', 'Anil', 'Gupta','M', 'Chair in Strategy', 'agupta@umd.edu', '485834747'),
	('100093090', 'Nick', 'Seybert','F','Associate Professor', 'nseybert@umd.edu', '485834747'),
	('203498487', 'Judy', 'Frels', 'F', 'Academic Director', 'jfrels@umd.edu', null),
	('067878574', 'Rosellina', 'Ferraro', 'F', 'Associate Dean', 'rferrar2@umd.edu', '203498487'),
	('999678475', 'Bo','Zhou','M', 'Associate Professor', 'bozhou@umd.edu', '203498487'),
	('777048832', 'Michael', 'Trusov','M', 'Dean Professor', 'mtrusov@umd.edu', '203498487'),
	('666526523', 'Amna', 'Kirmani', 'F', 'Area Chair', 'akirmani@umd.edu', '203498487'),
	('075850674', 'Michael',  'Cichello', ' M', 'Academic Director', 'mcichell@umd.edu', Null),
	('075850678', 'Sershiy', 'Kozak', 'M', 'Assistant Professor', 'skozak@rhsmith.umd.edu','075850674'),
	('090506741', 'Sarah', 'Kroncke', 'F', 'Senturer', 'skroncke@rhsmith.umd.edu', '075850674'),
	('095850894', 'Clifford',  'Rossi', 'M', 'Professor Practice', 'crossi@umd.edu', '075850674'),
	('075889001', 'Liu', 'Yang', 'F', 'Associate Professor', 'lyang1@umd.edu', '075850674'),
	('057894564', 'Thomas', 'Corsi', 'M', 'Academic Director', 'tcorsi@umd.edu', Null),
	('057894567', 'Philip', 'Evers', 'M', 'Associate Management', 'pevers@umd.edu', '057894564'),
	('057894566', 'Gosia' ,'Langa', 'F', 'Senior Lecturer', 'glanga@umd.edu', '057894564'),
	('057893451', 'Leland', 'Gardener', 'M', 'Principal Lecturer', 'lgardne1@umd.edu', '057894564'),
	('057873455', ' Martin', 'Dresner', 'M', 'Professor', 'mdresner@umd.edu', '057894564');

	


INSERT INTO [Smith.Rank] VALUES 
	('231', 15, NULL, 2023, '121'),
	('221', 16, NULL, 2022, '121'),
	('232', 57, 38, 2023, '129'),
	('222', 55, 31, 2022, '129'),
	('233', 47 ,45, 2023,'130'),
	('223', 50, 44, 2022,'130'),
	('234', 11, 59, 2023, '131'),
	('224', 9, 59, 2022, '131'),
	('235', 57, 60, 2023, '230'),
	('225', 55, 57, 2022, '230'),
	('236', 60, 43, 2023, '234'),
	('226', 57, 39, 2022, '234'),
	('237', 55, NULL, 2023, '301'),
	('227', 55, NULL, 2022, '301'),
	('238', 20, 28, 2023, '312'),
	('228', 22, 26, 2022, '312');



INSERT INTO [Smith.Work] VALUES 
	('131', '178923894', '2021-02-03'),
	('131', '178943793', '2009-03-18'),
	('131', '134943793', '2010-06-18'),
	('131', '129307389', '2000-10-20'),
	('131', '123948392', '2001-02-03'),
	('131', '129839472', '2002-03-02'),
	('131', '102930291', '2001-03-18'),
	('129', '126447738', '1998-01-01'),
	('129', '924849298', '2000-03-02'),
	('129', '294746261', '2000-04-02'),
	('129', '389485727', '2008-09-02'),
	('129', '995885783', '2006-09-20'),
	('130', '475737389', '1999-07-28'),
	('130', '478573874', '2000-07-30'),
	('130', '498596788', '1996-07-28'),
	('130', '954895743', '1999-02-20'),
	('130', '094938492', '2001-02-01'),
	('121', '192837462', '2000-11-04'),
	('121', '129384872', '2000-11-06'),
	('121', '123984756', '2001-12-05'),
	('121', '192839472', '2001-12-06'),
	('121', '182736455', '2000-12-07'),
	('121', '174839282', '2000-11-09'),
	('121', '198347621', '2000-03-02'),
	('121', '156738294', '2000-04-19'),
	('230', '485834747', '2007-09-20'),
	('230', '394985737', '2003-12-13'),
	('230', '950685734', '2010-08-01'),
	('230', '006949983', '2012-09-13'),
	('230', '100093090', '2012-03-26'),
	('301', '075850674', '2000-09-26'),
	('301', '075850678', '2000-04-05'),
	('301', '090506741', '2001-03-20'),
	('301', '095850894', '2000-11-20'),
	('301', '075889001', '1999-10-09'),
	('234', '203498487', '2001-02-20'),
	('234', '067878574', '2005-11-05'),
	('234', '999678475', '2001-10-10'),
	('234', '777048832', '2001-10-30'),
	('234', '666526523', '2009-11-11'),
	('312', '057894564', '2009-09-28'),
	('312', '057894566', '2010-09-28'),
	('312', '057894567', '2008-09-28'),
	('312', '057893451', '2001-09-28'),
	('312', '057873455', '2001-09-28');



