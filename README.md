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
| Power (CO₂) | Electricity generation emissions (CO₂) | [Power](https://downloads.climatetrace.org/latest/country_packages/co2/USA.zip) |
| Non-Residential Buildings (CO₂) | On-site fuel usage emissions, excluding electricity (CO₂) | [Non-Residential Buildings ()](https://downloads.climatetrace.org/latest/country_packages/co2/USA.zip) |


## Reproducibility 


## Contributors
- References or acknowledgements. In an appropriate, consistent format, including links. Provide a reference to the course and any other sources that supported the development of the repository. Add references for data sets too.

## References
- References or acknowledgements. In an appropriate, consistent format, including links. Provide a reference to the course and any other sources that supported the development of the repository. Add references for data sets too.
