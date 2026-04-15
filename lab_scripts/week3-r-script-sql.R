library(DBI)
library(duckdb)

# Establish connection
con <- dbConnect(duckdb::duckdb(), dbdir = ":memory:")  # or a file path like "mydb.duckdb"
sql <- readLines("lab_scripts/week3.sql") |> paste(collapse = "\n")
# Execute multiple lines
statements <- strsplit(sql, ";")[[1]]
statements <- trimws(statements)
statements <- statements[nchar(statements) > 0]

for (stmt in statements) {
         dbExecute(con, stmt)
    }


# Confirm that table exists 
dbListTables(con)
dbGetQuery(con, "SELECT * FROM species_2 LIMIT 5")
