SELECT S.sname 
FROM Sailors S
WHERE NOT EXISTS (SELECT B.bid 
                  FROM Boats B
                  WHERE NOT EXISTS(SELECT R.bid
                                   FROM Reserves R
                                   WHERE R.bid = B.bid
                                         AND R.sid = S.sid));
