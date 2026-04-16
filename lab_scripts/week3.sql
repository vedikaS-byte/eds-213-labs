--CREATE TABLE species_2 AS
--  SELECT * FROM read_csv("data/species (1).csv");
  
  
-- ~/MEDS/eds-213/eds-213-labs/lab_scripts
CREATE TABLE power AS
  SELECT * FROM read_csv('/Users/vrs/MEDS/eds-213/eds-213-labs/data/DATA/power/electricity-generation_emissions_sources_ownership_v5_5_0.csv');

.table


CREATE TABLE non_res AS
  SELECT * FROM read_csv("/Users/vrs/MEDS/eds-213/eds-213-labs/data/DATA/buildings/non-residential-onsite-fuel-usage_emissions_sources_v5_5_0.csv");

.table

CREATE TABLE res AS
  SELECT * FROM read_csv("/Users/vrs/MEDS/eds-213/eds-213-labs/data/DATA/buildings/residential-onsite-fuel-usage_emissions_sources_v5_5_0.csv");

.table

-- Perform an exploratory join for power emissions and non-residential
SELECT * FROM non_res JOIN res 
  ON non_res.iso3_country = res.iso3_country;

.table


-- Perform a join between power and residential 