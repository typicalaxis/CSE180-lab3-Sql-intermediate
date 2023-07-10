SELECT DISTINCT h.highwayNum, h.length,
    (SELECT COUNT(v.exitNum)
    FROM MisdirectedExitView v, Exits e
    WHERE v.exitNum = e.exitNum AND
    v.highwayNum = h.highwayNum AND
    e.highwayNum = v.highwayNum AND
    e.isExitOpen = TRUE) as openMisdirectedExitCount
FROM Highways h
WHERE h.highwayNum in (SELECT highwayNum FROM MisdirectedExitView);
--output of the query on the load data before the deletions
-- highwaynum | length | openmisdirectedexitcount
------------+--------+--------------------------
--          1 |  150.3 |                        1
--          8 |   90.0 |                        0
--         13 |   45.5 |                        2
--         17 |  102.6 |                        3
--        280 |  200.9 |                        1
--DELETE FROM Exits WHERE highwayNum = '17' AND exitNum = '34';
--DELETE FROM Exits WHERE highwayNum = '280' AND exitNum = '95';

-- second output of the same query after the deletions
/*  highwaynum | length | openmisdirectedexitcount
------------+--------+--------------------------
          1 |  150.3 |                        1
          8 |   90.0 |                        0
         13 |   45.5 |                        2
         17 |  102.6 |                        2 */