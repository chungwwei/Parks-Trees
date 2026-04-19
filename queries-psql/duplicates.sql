SELECT tree_id, COUNT(*) as count
FROM street_trees
GROUP BY tree_id
HAVING COUNT(*) > 1
ORDER BY count DESC;
