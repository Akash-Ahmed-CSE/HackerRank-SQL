SELECT b.n,
       CASE 
           WHEN b.p IS NOT NULL THEN 
               CASE 
                   WHEN (SELECT COUNT(*) FROM bst WHERE p = b.n) = 0 THEN 'Leaf'
                   ELSE 'Inner'
               END
           ELSE 'Root'
       END AS NodeType
FROM bst AS b
ORDER BY b.n;
