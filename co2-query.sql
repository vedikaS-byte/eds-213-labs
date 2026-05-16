--- Question: Which US jurisdictions (at the county-level) have the highest carbon intensity from operating buildings, measured in tons of CO2 per m^2 per year, averaged over the 2021-2026 period?
SELECT 
    s.source_name, 
    ROUND(
        SUM(e.emissions_quantity) / s.capacity 
        / COUNT(DISTINCT EXTRACT(YEAR FROM e.start_time)), 3 -- Get distinct # of years for a source's emissions records to calculate average annual emissions
    ) AS co2_per_m2_per_year 
FROM sources s
JOIN emission_records e ON s.source_id = e.source_id 
WHERE e.sector = 'buildings' 
  AND s.capacity_units = 'm^2'  
  AND s.capacity > 0 -- Exclude sources with zero capacity to avoid division by zero (avoid resulting NaN)                                 
GROUP BY s.source_id, s.source_name, s.capacity
ORDER BY co2_per_m2_per_year DESC                         
LIMIT 10;