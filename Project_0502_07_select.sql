USE BUDT702_Project_0502_07

-- 1. What are the top three programs at UMD Smith School based on their current ranking scores?
SELECT TOP 3 
	p.programName AS 'Program Name', r.rankUSNews AS 'Rank of U.S.News'
FROM [Smith.Program] p
JOIN [Smith.Rank] r ON p.programId = r.programId
WHERE r.rankYear = '2023'
ORDER BY r.rankUSNews 

-- 2. What are the the faculty members' name belonging to the 
-- USnews highest-ranked programs and their supervisors?
SELECT f.[Faculty Name], f1.[Faculty Name] AS 'Supervisor', 
	   f.facultyGender AS 'Gender', f.facultyEmail AS 'Faculty Email', 
	   f.facultyTitle AS 'Faulty Title'
FROM [Smith.Work] as w
JOIN FacultyView f ON w.facultyId = f.facultyId 
JOIN [Smith.Program] p ON w.programId = p.programId
JOIN FacultyView f1 ON f.facultyIdDirector = f1.facultyId
WHERE p.programId IN(
	SELECT TOP 1 r.programId
	FROM [Smith.Rank] r
	ORDER BY r.rankUSNews)
ORDER BY F.[Faculty Name];

-- 3. What are all the UMD Smith School programs with an improved rank of USnews 
-- compared to the previous year?
SELECT p.programName AS 'Program Name',
    r1.rankUSNews AS 'Current Rank (2023)',
    r2.rankUSNews AS 'Previous Rank (2022)'
FROM [Smith.Program] p
JOIN [Smith.Rank] r1 ON p.programId = r1.programId AND r1.rankYear = '2023'
JOIN [Smith.Rank] r2 ON p.programId = r2.programId AND r2.rankYear = '2022'
WHERE r1.rankUSNews < r2.rankUSNews
ORDER BY 'Current Rank (2023)';

-- 4. What are the programs that best fit a student with a GPA of 3.2, 
-- GRE of 315 ordered by USnews ranking?
SELECT p.programName AS 'Program Name',
    (SELECT r.rankUSNews
        FROM [Smith.Rank] AS r
        WHERE (p.programId = r.programId) AND (r.rankYear = '2023')
    ) AS 'Rank of U.S.News in 2023'
FROM [Smith.Program] AS p
JOIN [Smith.Requirement] AS re ON p.requirementId = re.requirementId
WHERE (re.requirementGpa <= 3.2)
    AND (re.requirementGRE IS NULL OR re.requirementGRE <= 315)
ORDER BY 'Rank of U.S.News in 2023';
