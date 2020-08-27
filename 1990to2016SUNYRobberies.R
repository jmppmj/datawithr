#Load necessary libraries
library(ggplot2)
library(RSQLite)
library(DBI)
library(datasets)

#Connect to SQLite database.
db <- dbConnect(SQLite(), "crime.db")

#Return query as a data frame.
table <- dbGetQuery(db,"SELECT Year, SUM(Robbery) AS Robberies FROM crimetable WHERE Agency LIKE '%SUNY%' GROUP BY Year;")

#Create graph with data frame.
vgraph <- ggplot(table, aes(x=Year, y=Robberies, fill=Year)) +  
geom_bar(stat="identity", position="dodge") + labs(title = "1990-2016 SUNY Robberies\nPer Year", x="Year", y="Robberies") + scale_fill_hue(c=25, l=80)+ theme(legend.position='none')
print(vgraph)

#Close database connection.
dbDisconnect(db)


