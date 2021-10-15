SELECT NAME FROM
(SELECT
NAME,
MS,
P2.SALARY AS BFS
FROM
    (SELECT
     S.ID,
     S.NAME AS NAME,
     SALARY AS MS,
     F.FRIEND_ID AS FID
     FROM STUDENTS S
     INNER JOIN PACKAGES P ON (S.ID = P.ID)
     INNER JOIN FRIENDS F ON  (S.ID = F.ID)) TEMP
INNER JOIN PACKAGES P2 ON (TEMP.FID = P2.ID)) TEMP2
WHERE BFS> MS
ORDER BY BFS;