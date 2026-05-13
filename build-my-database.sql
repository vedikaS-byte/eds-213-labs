
-- Import data

CREATE TABLE sources (
    source_id       VARCHAR PRIMARY KEY,
    source_name     VARCHAR NOT NULL,
    iso3_country    VARCHAR NOT NULL,
    lat             DOUBLE,
    lon             DOUBLE,
    capacity        DOUBLE,
    capacity_units  VARCHAR,
    capacity_factor DOUBLE
);

COPY sources (source_id, source_name, iso3_country, lat, lon, capacity, capacity_units, capacity_factor)
FROM '/Users/vedikashirtekar/MEDS/EDS-213/eds-213-labs/sources.csv'
DELIMITER ','
CSV HEADER;

CREATE TABLE emission_records (
    source_id              VARCHAR,
    start_time             DATE,
    end_time               DATE,
    gas                    VARCHAR,
    emissions_quantity     DOUBLE,
    temporal_granularity   VARCHAR,
    activity               DOUBLE,
    activity_units         VARCHAR,
    emissions_factor       DOUBLE,
    emissions_factor_units VARCHAR,
    sector                 VARCHAR
);


COPY emission_records (source_id, start_time, end_time, gas, emissions_quantity, temporal_granularity, activity, activity_units, emissions_factor, emissions_factor_units, sector)
FROM '/Users/vedikashirtekar/MEDS/EDS-213/eds-213-labs/emission_records.csv'
DELIMITER ','
CSV HEADER;


-- Question: Which US counties emit the most CO₂ from non-residential fuel use per square meter of building floor area?
-- Note: Database contains two tables (sources with PK source_id, and emission_records with FK source_id)
SELECT s.source_name, 
    ROUND(
        SUM(e.emissions_quantity) / s.capacity 
           / COUNT(DISTINCT EXTRACT(YEAR FROM e.start_time)), 3) AS    
           Co2_per_m2_per_yeaR 
         FROM sources s
         JOIN emission_records e ON s.source_id = e.source_id
         WHERE e.sector = 'buildings' AND s.capacity_units = 'm^2'
         GROUP BY s.source_name, s.capacity
          ORDER BY co2_per_m2_per_year DESC;

