#Load necessary libraries
library(ggplot2)
library(RSQLite)
library(DBI)
library(datasets)

#Connect to SQLite database.
db <- dbConnect(SQLite(), "crime.db")

#Return query as a data frame.
table <- dbGetQuery(db,"SELECT Year, cast(Larceny as Numeric) AS Larceny FROM crimetable WHERE County ='Saratoga' GROUP BY Year ORDER BY Year DESC;")

#Create graph with data frame.
vgraph <- ggplot(table, aes(x = Year, y = Larceny, group = 1))
vgraph <- vgraph + geom_line(arrow = arrow()) + labs(title = "1990-2016 Total Saratoga County Larcenies\nPer Year", x="Year", y="Larcenies")
print(vgraph)

#Close database connection.
dbDisconnect(db)


