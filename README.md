<b>Visualizing Data with R </b>

<i>Languages:</i> R, SQL (SQLite)

<i>Purpose of the project:</i>
To store, clean, and visualize a https://www.data.gov/ CSV file using R and SQLite.

The CSV file used for this project was downloaded from:<a href="https://catalog.data.gov/dataset/index-crimes-by-county-and-agency-beginning-1990"> Index_Crimes_by_County_and_Agency__Beginning_1990.csv</a>. 

The file includes data on various types of New York State crimes committed from 1990 through 2016. 

Note: I deleted 393 rows with empty data/0 months reported after importing the CSV to a SQLite database.

<i>Project information:</I>
<ul style="list-style-type:circle">
<li>Imported CSV file into a <a href="https://sqlite.org/download.html">SQLite</a> database using <a href="http://sqlitebrowser.org/"> DB Browser</a></li>
<li>Used/Installed <a href="https://www.rdocumentation.org/packages/RSQLite/versions/2.0"> RSQLite</a> and <a href="https://www.rdocumentation.org/packages/ggplot2/versions/2.2.1"> ggplot2</a> packages for R</li>
<li>Used <a href="https://cran.r-project.org/bin/windows/base/">R 3.4.2</a> and <a href="https://www.rstudio.com/products/rstudio/download/">R Studio</a> to connect to database and visualize data/queries</li>
</ul>

<i>Queries visualized include:</i>
<ul style="list-style-type:circle">
<li>2015 NYS Violent Crimes by County - Scatter Plot</li>
<li>1990-2016 Nassau County Violent Crimes - Bar Chart</li>
<li>1990-2016 SUNY Robberies - Bar Chart</li>
<li>1990-2016 Saratoga County Larcenies - Line Graph</li>
<li>1990-2016 New York State Murders by County - Scatter Plot</li>
</ul>

All of these graphs and their corresponsing R scripts, as well as the CSV file and SQLite database, are available in this repository.
