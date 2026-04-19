SELECT borocode, borough, COUNT(*) as count
FROM street_trees
GROUP BY borocode, borough
ORDER BY borocode;
