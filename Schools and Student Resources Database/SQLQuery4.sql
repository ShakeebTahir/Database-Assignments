SELECT
SCHOOLS.Name AS SchoolName,
AVG(SCHOOLS.Shape.STDistance(RECREATIONFACILITIES.Shape)) * 111300 AS AvgDistanceToRecreationFacility

FROM SCHOOLS
INNER JOIN
RECREATIONFACILITIES ON RECREATIONFACILITIES.NeighbourhoodID = SCHOOLS.NeighbourhoodID
GROUP BY 
SCHOOLS.Name
ORDER BY 
AvgDistanceToRecreationFacility;
