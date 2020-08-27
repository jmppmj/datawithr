#Load necessary libraries
library(ggplot2)
library(RSQLite)
library(DBI)

#Connect to SQLite database.
db <- dbConnect(SQLite(), "crime.db")

#Return query as a data frame.
table <- dbGetQuery(db,"SELECT County, SUM(ViolentTotal) AS Violent_Crime_Total FROM crimetable WHERE Year = '2015' AND NOT County = 'Region Total' GROUP BY County;")

#Create graph with data frame.
vgraph <- ggplot(data = table, aes(Violent_Crime_Total, County))
vgraph <- vgraph + geom_point(aes(color = Violent_Crime_Total)) + geom_smooth(method = "lm", se = FALSE) + labs(title = "2015 New York State Violent Crimes\nBy County", x="Total Violent Crimes", y="County")
print(vgraph)

#Close database connection.
dbDisconnect(db)


