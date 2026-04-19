SELECT 
  MIN(tree_dbh) as min_diameter,
  MAX(tree_dbh) as max_diameter,
  AVG(tree_dbh) as avg_diameter,
  COUNT(*) FILTER (WHERE tree_dbh = 0) as zero_diameter,
  COUNT(*) FILTER (WHERE tree_dbh > 50) as large_diameter
FROM street_trees;
