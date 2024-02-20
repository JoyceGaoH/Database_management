USE BUDT702_Project_0502_07

GO
DROP VIEW IF EXISTS FacultyView 
GO
CREATE VIEW FacultyView  AS
	SELECT f.facultyId, CONCAT(f.facultyFName,' ', f.facultyLName) AS 'Faculty Name',
		   f.facultyGender, f.facultyTitle, f.facultyEmail, f.facultyIdDirector
	FROM [Smith.Faculty] f
GO
SELECT * 
FROM FacultyView