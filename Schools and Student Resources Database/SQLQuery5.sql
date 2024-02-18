WITH SchoolLibraries AS (
SELECT 
SCHOOLS.Name AS SchoolName, 
COUNT(LIBRARIES.Shape) AS LibraryCount 
FROM SCHOOLS,  LIBRARIES
WHERE 
SCHOOLS.Shape.STBuffer(0.009).STIntersects(LIBRARIES.Shape) = 1
GROUP BY SCHOOLS.Name
)

SELECT 
SchoolName, 
LibraryCount
FROM SchoolLibraries
WHERE LibraryCount > 1;
