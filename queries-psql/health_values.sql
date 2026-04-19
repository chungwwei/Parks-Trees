SELECT DISTINCT health, COUNT(*) as count
FROM street_trees
GROUP BY health
ORDER BY count DESC;
