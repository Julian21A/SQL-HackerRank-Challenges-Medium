SELECT CAST(LAT_N AS DECIMAL (10,4))
FROM
    (SELECT LAT_N, ROW_NUMBER() OVER (ORDER BY LAT_N) as MED FROM STATION ) AS X
WHERE MED = ( SELECT ROUND((COUNT(LAT_N)+1)/2,0) FROM STATION);