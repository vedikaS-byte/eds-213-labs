--CREATE TABLE species_2 AS
--  SELECT * FROM read_csv("data/species (1).csv");
  
  
CREATE TABLE power AS
  SELECT * FROM read_csv_auto('/data/DATA/power/electricity-generation_emissions_sources_v5_5_0.csv');