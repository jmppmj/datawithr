#Load necessary libraries
library(ggplot2)
library(RSQLite)
library(DBI)

#Connect to SQLite database.
db <- dbConnect(SQLite(), "crime.db")

#Return query as a data frame.
table <- dbGetQuery(db,"SELECT County, cast(Murder as Numeric) AS Murder FROM crimetable WHERE NOT County = 'Region Total' GROUP BY County ORDER BY County;")

#Create graph with data frame.
vgraph <- ggplot(table, aes(x = Murder, y = County))
vgraph <- vgraph + geom_point(aes(colour = Murder), size = 4) + scale_colour_gradient(low = "darkolivegreen4", high = "steelblue2") + labs(title = "1990-2016 New York State Murders\nBy County", x="Murders", y="Counties") + theme(plot.title = element_text(color="#666666", face="bold", size=22, hjust = 0.5)) 
print(vgraph)

#Close database connection.
dbDisconnect(db)


