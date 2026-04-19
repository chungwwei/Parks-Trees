SELECT 
  status,
  COUNT(*) as count
FROM street_trees
WHERE spc_common IS NULL
OR spc_common = ''
GROUP BY status
ORDER BY count DESC;
