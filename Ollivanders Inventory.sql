SELECT 
W.ID,
P.AGE,
W.COINS_NEEDED,
W.POWER
FROM WANDS W
INNER JOIN WANDS_PROPERTY P ON (W.CODE = P.CODE)
WHERE IS_EVIL = 0 AND W.COINS_NEEDED =(
                                        SELECT
                                        MIN(COINS_NEEDED)
                                        FROM WANDS W1 
                                        INNER JOIN WANDS_PROPERTY P1 ON (W1.CODE = P1.CODE)
                                        WHERE W1.POWER = W.POWER AND P1.AGE=P.AGE
                                        )
ORDER BY W.POWER DESC,P.AGE DESC;