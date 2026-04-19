SELECT 
  borough,
  COUNT(*) as total_trees,
  COUNT(*) FILTER (WHERE health = 'Good') as good,
  COUNT(*) FILTER (WHERE health = 'Fair') as fair,
  COUNT(*) FILTER (WHERE health = 'Poor') as poor,
  ROUND(COUNT(*) FILTER (WHERE health = 'Good') * 100.0 / COUNT(*), 2) as health_ratio
FROM street_trees
GROUP BY borough
ORDER BY total_trees DESC;
