SELECT
  COUNT(*) AS total,
  COUNT(*) FILTER (WHERE health IS NULL) AS null_health,
  COUNT(*) FILTER (WHERE status IS NULL) AS null_status,
  COUNT(*) FILTER (WHERE borough IS NULL) AS null_borough,
  COUNT(*) FILTER (WHERE latitude IS NULL) AS null_lat,
  COUNT(*) FILTER (WHERE longitude IS NULL) AS null_lng
FROM street_trees;
