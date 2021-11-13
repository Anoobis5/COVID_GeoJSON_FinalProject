## **COLUMBIA FINAL PROJECT**

#### Data Sources

#### Demographic Preprocessing
At our first meeting, after we agreed upon our mission, to identify correlating factors in effort to forecast future vaccination rates, we discussed three key facets to the design of our research. These three facets being: scope, data sources & key factors.

Scope: Being that the entire team live with in the NYC area, it was an easy agreement to want the focus of our study to be centralized around NY but to what? We discussed having our scope being NY v other North Eastern states but came to the conclusion that the dataset was too large for the purpose & timeframe of this project. So we drew our focus tighter to just the 5 NYC boroughs. Upon looking at the data we gathered, it was lacking and did not give us the compelling correlations we needed. So in order to correct this we widened our scope to the entirety of NYS, with our geographic measure being at the county level. This small detail was the key to identifying our data sources.

Data Sources: As with all good research it depends on the validity & accuracy of the data used. This was a key concern for the team. We did many Google searches and found tons of data from a variation of different sources but our questions for each one was the same: is this a proper data source with data we can trust? And is the data in a format we can manipulate to fit our end needs? After the vetting process we settled on using data from government sources. The data sources chosen had to have a direct link to one of the following: the US Center for Disease Control, New York State entity(ies) and New York City entity(ies). Complete list of resources used can be found in this ReadMe.

Key Factors: Once we had our data sources drilled down, we began to see what they had to offer. The team brainstormed on a myriad of factors that we believed had a correlation ranging from income, population density, demographic, fatality rates, hospitalizations, education, average form of transportation (i.e. car v public transit) etc. We ultimately decided that for the scope of this project, the key factors we wanted to focus in and analyze were: household income, Race/Ethnicity, NYS vaccination rates by county, housing & head of household education level.

ETL & Database
Once we had all the above identified, we began to parse and manipulate the data into forms that were fucntional for all later stages of the project. Most of the data had to be pulled from the websites manually via csv, but for one data source Portia was able to connect an API to retrieve the data. For the data that came back via csv, it was pulled into an excel document to do initial inspections of the data and to be sure that it was complete. Many different excel tools & functions were used in order to complete this first step, such as, sumif & sumifs, vlookups, conditional formatting, cut & paste, count, counts, countif & much more. Once the data had been vetted, it was then time to convert it into a pandas dataframe. We used the pandas library of python in order to convert it into an easily readable table for our machine learning model to read and use. But before that could happen we had to create and structure a system to house the data. 

In order to fill this missing piece we created a SQL database using PGAdmin in order to store and house our data. It was at this step that we thought it helpful to merge our race/ethnicity table with our low income table. This was completed using SQL within the database, which in turn created a new data table for our use. Once all the data tables were aggregated and successfully stored within our database they were sent to our machine learning model mechanic.

### __Resources__

https://health.data.ny.gov/browse?tags=covid-19

https://www1.nyc.gov/site/planning/planning-level/nyc-population/2020-census.page##2020-census-results

https://covid.cdc.gov/covid-data-tracker/

https://data.ny.gov/Energy-Environment/NYSERDA-Low-to-Moderate-Income-New-York-State-Cens/bui8-bb6g

https://coronavirus.health.ny.gov/demographic-vaccination-data

