# NYC Street Trees - QGIS Visualization

Mapped 683K+ NYC street trees using 2015 Tree Census data in QGIS, featuring multi-scale layers with health choropleth analysis

## Layers
- **Borough** — tree counts per borough with scale-dependent labels
  <img width="8084" height="6500" alt="borough_layer" src="https://github.com/user-attachments/assets/9dc10ff6-bd6a-40b9-87fc-7771685f75a1" />
- **Neighbourhood** — choropleth map showing tree health ratio
  <img width="8084" height="6500" alt="neighborhood_layer" src="https://github.com/user-attachments/assets/cd64a8a4-b97d-41ec-89b5-6a9ed4226240" />
- **Tree Points** — individual trees visible on close zoom with popup info
  <img width="8084" height="6500" alt="tree_layer" src="https://github.com/user-attachments/assets/0bf06a0c-e1f5-464b-a44e-51cd992f45bb" />



## Data Sources
- [2015 NYC Street Tree Census](https://data.cityofnewyork.us/Environment/2015-Street-Tree-Census-Tree-Data/uvpi-gqnh/about_data)
- [2020 Neighborhood Tabulation Areas (NTAs) for the polygon](https://data.cityofnewyork.us/City-Government/2020-Neighborhood-Tabulation-Areas-NTAs-/9nt8-h7nd/about_data)
- [NYC Borough Boundaries](https://data.cityofnewyork.us/City-Government/Borough-Boundaries/gthc-hcne/about_data)

## SQL Data Anomalies
SQL queries used to surface anomalies in the 2015 tree census data:
- `null_check.sql` — summarizes null values across key fields
- `duplicates.sql` — identifies duplicate tree records
- `health_values.sql` — profiles health field distribution
- `borough_summary.sql` — summarizes tree counts and health ratio per borough
- `coordinates.sql` — inspects tree coordinates within NYC bounds
- `borocode_check.sql` — profiles borocode and borough name mapping
- `empty_strings_check.sql` — counts empty strings in key fields
- `diameter_check.sql` — profiles tree diameter distribution
- `species_check.sql` — counts trees missing species records

**Notable finding:** 1 alive tree missing a health record (tree_id: 245041) — a genuine data entry anomaly as all alive trees should have a health status of Good, Fair or Poor.

## Tools
- QGIS
- PostgreSQL 15
