SELECT
  COUNT(*) FILTER (WHERE health = '') AS empty_health,
  COUNT(*) FILTER (WHERE status = '') AS empty_status,
  COUNT(*) FILTER (WHERE borough = '') AS empty_borough,
  COUNT(*) FILTER (WHERE spc_common = '') AS empty_species
FROM street_trees;
