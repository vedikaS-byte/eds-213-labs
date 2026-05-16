# CO₂ Emissions Database: U.S. Power and Non-Residential Building Emissions by County-Level Records

## Description

This repository houses a DuckDB database and analysis of CO₂ emissions intensity from non-residential buildings and power sources across US counties based on two datasets obtained from Climate TRACE. A relational database containing emission records across several county-level jurisdictions was created to relate source metadata (location and capacity) with monthly CO₂ emissions quantities. This relational database was used to calculate and visualize CO₂ intensity (tons CO₂/m²/year) to identify the highest-emitting jurisdictions in the U.S.


## Repository Structure 
```
├── co2-query.sql
├── data-cleaning.ipynb
├── data-visualization.ipynb
├── database
│   └── my-db.duckdb
├── database-creation.sql
├── eds-213-labs.Rproj
├── environment.yml
├── figs
│   └── co2_per_m2.png
├── LICENSE
├── README.md
└── requirements.txt
```

## Data Access
The data used in the creation of this relational database is not housed in this repository. ([Climate TRACE](https://climatetrace.org/data)) provides publicly accessible emissions data across sectors, countries, cities, and subnational inventories worldwide. Consult the [Climate TRACE methodology](https://github.com/climatetracecoalition/methodology-documents) for additional information regarding spatial methodology for building emissions estimation.

| Sector | Description | Source |
|---|---|---|
| Power | Electricity generation emissions (CO₂) | [Power](https://downloads.climatetrace.org/latest/country_packages/co2/USA.zip) |
| Non-Residential Buildings | On-site fuel usage emissions, excluding electricity (CO₂) | [Non-Residential Buildings](https://downloads.climatetrace.org/latest/country_packages/co2/USA.zip) |


## Reproducibility 
Steps to reproduce the analysis are included below: 
1. Clone or fork repository.
2. Install dependencies using `environment.yml`.
3. Download raw data from Climate TRACE (links in `Data` section).
4. Run `data-cleaning.ipynb` to clean the data and export `sources.csv` and `emission_records.csv` to `data/new_tables/`.
5. Run `build-my-database.sql` to create the database and load the cleaned tables.
6. Run `data-visualization.ipynb` to reproduce the analysis and visualizations.

## Contributors
- References or acknowledgements. In an appropriate, consistent format, including links. Provide a reference to the course and any other sources that supported the development of the repository. Add references for data sets too.

## References
- References or acknowledgements. In an appropriate, consistent format, including links. Provide a reference to the course and any other sources that supported the development of the repository. Add references for data sets too.
