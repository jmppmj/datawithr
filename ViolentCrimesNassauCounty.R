#Load necessary libraries
library(ggplot2)
library(RSQLite)
library(DBI)
library(datasets)

#Connect to SQLite database.
db <- dbConnect(SQLite(), "crime.db")

#Return query as a data frame.
table <- dbGetQuery(db,"SELECT Year, SUM(ViolentTotal) AS Violent_Crimes FROM crimetable WHERE County='Nassau' GROUP BY Year ORDER BY Year;")

#Create graph with data frame.
vgraph <- ggplot(data = table, aes(x=Year, y=Violent_Crimes, fill=Violent_Crimes))
vgraph <- vgraph + geom_bar(stat="identity", position="dodge") + labs(title = "1990-2016 Nassau County Violent Crimes\nPer Year", x="Year", y="Number_of_Violent_Crimes")
print(vgraph)

#Close database connection.
dbDisconnect(db)


