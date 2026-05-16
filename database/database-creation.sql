-- Create sources table
CREATE TABLE sources (
    source_id       VARCHAR PRIMARY KEY,
    source_name     VARCHAR NOT NULL,
    iso3_country    VARCHAR NOT NULL,
    start_time      DATE,
    end_time        DATE,
    lat             DOUBLE,
    lon             DOUBLE,
    capacity        DOUBLE,
    capacity_units  VARCHAR,
    capacity_factor DOUBLE
);

COPY sources FROM '/Users/vedikashirtekar/MEDS/EDS-213/eds-213-labs/data/new_tables/sources.csv';

-- Create emission_records table
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
    sector                 VARCHAR,
    PRIMARY KEY (source_id, start_time, gas), -- Composite primary key to allow multiple records per source_id for different gases and time periods
    FOREIGN KEY (source_id) REFERENCES sources(source_id)
);

COPY emission_records FROM '/Users/vedikashirtekar/MEDS/EDS-213/eds-213-labs/data/new_tables/emission_records.csv';

--- Check out the tables 
SELECT * FROM sources LIMIT 5;
SELECT * FROM emission_records LIMIT 5;