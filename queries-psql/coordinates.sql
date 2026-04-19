SELECT 
  COUNT(*) FILTER (WHERE latitude NOT BETWEEN 40.4 AND 40.92) as bad_lat,
  COUNT(*) FILTER (WHERE longitude NOT BETWEEN -74.3 AND -73.7) as bad_lng,
  COUNT(*) FILTER (WHERE latitude IS NULL) as null_lat,
  COUNT(*) FILTER (WHERE longitude IS NULL) as null_lng
FROM street_trees;