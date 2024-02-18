WITH RankedDistances AS (
SELECT
SCHOOLS.Name AS SchoolName,
LIBRARIES.BranchName AS NearestLibrary,
SCHOOLS.Shape.STDistance(LIBRARIES.Shape) * 111300 AS DistanceToLibrary,
ROW_NUMBER() OVER (PARTITION BY SCHOOLS.Name ORDER BY SCHOOLS.Shape.STDistance(LIBRARIES.Shape)) AS RowNum
    
FROM SCHOOLS
CROSS JOIN LIBRARIES
)

SELECT
SchoolName,
NearestLibrary,
DistanceToLibrary
FROM RankedDistances
WHERE RowNum = 1
ORDER BY SchoolName;
