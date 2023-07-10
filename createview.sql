CREATE VIEW MisdirectedExitView AS
SELECT e1.highwayNum, e1.exitNum, e1.mileMarker, 
(SELECT COUNT(DISTINCT e2.exitNum)
            FROM Exits e2
            WHERE e2.exitNum > e1.exitNum AND
            e2.mileMarker < e1.mileMarker AND
            e1.highwayNum = e2.highwayNum) as misdirectedProverCount
FROM Exits e1
WHERE (SELECT COUNT(DISTINCT e2.exitNum)
            FROM Exits e2
            WHERE e2.exitNum > e1.exitNum AND
            e2.mileMarker < e1.mileMarker AND
            e1.highwayNum = e2.highwayNum) >=2;
