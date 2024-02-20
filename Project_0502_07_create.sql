USE BUDT702_Project_0502_07

--SQL	drop	tables:
DROP TABLE IF EXISTS [Smith.Work];
DROP TABLE IF EXISTS [Smith.Rank];
DROP TABLE IF EXISTS [Smith.Program];
DROP TABLE IF EXISTS [Smith.Requirement];
DROP TABLE IF EXISTS [Smith.Faculty];

--SQL	create	tables:
CREATE TABLE [Smith.Requirement] ( 
	requirementId CHAR(3) NOT NULL,
	requirementGpa DECIMAL(2,1) NOT NULL,
	requirementGRE INT,
	CONSTRAINT pk_Requirement_requirementId PRIMARY KEY (requirementId),
) ;

CREATE TABLE [Smith.Program] ( 
	programId CHAR(3) NOT NULL, 
	programName VARCHAR(25), 
	programType VARCHAR(10), 
	programDuration INT, 
	programWebsite VARCHAR(100),
	requirementId CHAR(3), 
	CONSTRAINT pk_Program_programId PRIMARY KEY (programId),
	CONSTRAINT fk_Program_requirementId FOREIGN KEY (requirementId) 
		REFERENCES [Smith.Requirement] (requirementId)
		ON DELETE NO ACTION ON UPDATE CASCADE
) ;

CREATE TABLE [Smith.Faculty] ( 
	facultyId CHAR(9) NOT NULL,
	facultyFName VARCHAR(20),
	facultyLName VARCHAR(20),
	facultyGender CHAR(3),
	facultyTitle VARCHAR(35),
	facultyEmail CHAR(30),
	facultyIdDirector CHAR(9),
	CONSTRAINT pk_Faculty_facultyId PRIMARY KEY (facultyId),
	CONSTRAINT fk_Faculty_facultyIdDirector FOREIGN KEY (facultyIdDirector) 
		REFERENCES [Smith.Faculty] (facultyId)
		ON DELETE NO ACTION ON UPDATE NO ACTION
) ;

CREATE TABLE [Smith.Rank] ( 
	rankId CHAR(3) NOT NULL,
	rankUSNews INT,
	rankQS CHAR(3),
	rankYear CHAR(4),
	programId CHAR(3), 
	CONSTRAINT pk_Rank_rankId PRIMARY KEY (rankId),
	CONSTRAINT fk_Rank_programId FOREIGN KEY (programId) 
		REFERENCES [Smith.Program] (programId)
		ON DELETE CASCADE ON UPDATE CASCADE
) ;


CREATE TABLE [Smith.Work] ( 
	programId CHAR(3) NOT NULL, 
	facultyId CHAR(9) NOT NULL,
	startDate DATE,
	CONSTRAINT pk_Work_programId_facultyId PRIMARY KEY (programId, facultyId),
	CONSTRAINT fk_Work_programId FOREIGN KEY (programId) 
		REFERENCES [Smith.Program] (programId)
		ON DELETE NO ACTION ON UPDATE CASCADE,
	CONSTRAINT fk_Work_facultyId FOREIGN KEY (facultyId) 
		REFERENCES [Smith.Faculty] (facultyId)
		ON DELETE NO ACTION ON UPDATE CASCADE
) ;
