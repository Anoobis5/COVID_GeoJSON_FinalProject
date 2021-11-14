![Project_Banner](https://user-images.githubusercontent.com/84881187/141700361-03263448-c2cc-480b-9bd8-bb4f071656f2.png)

## Project Overview

The purpose of this analysis is to gain insight into what factors impact COVID-19 vaccination rates for New York State residents. Are there certain demographic factors (e.g., household income) that predict vaccination rates of New York State residents?

## Table of Contents

 - [Installations](#installations)
 - [Analysis](#analysis)
 - [Results](#results)
 - [Dashboard](#dashboard)
 - [Data_Sources](#data_sources)
 - [Credits](#credits)

## Installations

For our analysis, we used a 4 part stack series:

#### Data Cleaning
 * To clean, transform, and explore the data, we used Pandas, Python, and GoogleCollab.

#### Database Storage
 * PostgreSQL was the database of choice for our data.

#### Machine Learning
 * Both SciKitLearn and Tensorflow were the ML libraries used to create a classifier for the analysis.

#### Dashboard
 * We used Heroku to formulate our dashboard. We used Tableau, Flask, and integreated D3.js for fully functioning and interactive visualizations on the dashboard. 

## Analysis

### Preprocessing

Firstly vaccination data preprocessing began with finding a site that contained useful and functional information aboute Covid-19 and vaccinations; the site Covid Act Now was found to have such information and had a downloadable data and needed Rest API. Then we needed to collect census data, and process our demographic features. <br/>

#### Vaccination Data Preprocessing
All preprocessing was done in in a Jupyter Notebook, to clean the data and ultimately convert that data into a JavaScript data file.  
The data was imported to Jupyter Notebook and then changed into a CSV file from which the DataFrame was created. 

![Pandas DataFrame](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Resource_Pics/JN_PandasDF.PNG)

Investigative work and cleaning was done on the DataFrame. Columns with Nans would be replaced with zeros. We were interested in using the metric for distributed vaccines to see if this was a predictor for vaccinations but this columns was filled with Nans.

![Data Investigating](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Resource_Pics/DF_Columns.PNG)

The fetch function was used to compile the data from the DataFrame that would be used for mapping. 

![Fetch Function](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Resource_Pics/DF_Fetch_Data.PNG)

The data was then put into a dictionary, called c_data and this was converted into a json file.

![C_data json file](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Resource_Pics/C_Data.PNG)

The JSON file was then converted to a JavaScript file
![Covert C_Data to JS](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Resource_Pics/GeoJson_C_Data.PNG)

__Challenges__

Secondly for creation of the map of New York State, we needed NYS county lines. Initially from the http://gis.ny.gov/gis site, a NYS county shape file was download.
This file however needed to be converted into a JavaScript file to use for mapping, however after converting the file it was unuseable as the coordinates were to large.

A secondary search led to the nycounties.geojson files which was ultimately used to create the county lines.
The D3.JSON command was used on both files in order to create the map.  

Map Box and Leaflet will be used to create map with overlays and layers
![]()

#### Results

![Completed Vaccines](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Resource_Pics/MapLayers.PNG)

![Initiated Vaccines](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Resource_Pics/Intiated_Vaccines.PNG)

![Hospitalized Ratio]()

![Deaths](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Resource_Pics/Deaths.PNG)

#### Summary

In order to use this data in the model, the counties were grouped to match the county/county group labels in the demographic data. The county groups' vaccination rates were averaged and the population and vaccination counts were summed to create aggregate scores. This vaccination data was then imported into a Google Colab notebook for further preprocessing. The columns were narrowed down to the county/county group names, total population and vaccination rate. Any rows with null data were dropped and the columns were renamed to 'County', 'Total_Pop' and 'Vax_Rate' for clarity. 



### Demographic Preprocessing

Our team agreed upon the mission to identify potential correlating factors in effort to forecast future vaccination rates. We discussed three key facets to the design of our research. These three facets being: scope, data sources & key factors.

 * Scope: We discussed having our scope being NYC 5-boroughs VS New York State. Upon looking at the data we gathered, we decided to broaden our sample to vaccination rates across New York State, with our geographic measure being at the county level.

 * Data Sources: We found tons of data from a variation of The data sources chosen included aggregate data from: the US Center for Disease Control, New York State Department of Health and New York City entities. Complete list of resources used can be found [here](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/tree/main/Resources).

 * Key Factors: Once we had our data sources narrowed down, we began to see what they had to offer. The team considered various factors that we believed had a correlation on residents' decisions to get vaccinated ranging from income, population density, demographic, fatality rates, hospitalizations, education, average form of transportation (i.e. car v public transit) etc. We ultimately decided that for the scope of this project, the key factors we wanted to focus in and analyze were: household income, Race/Ethnicity, NYS vaccination rates by county, housing & head of household education level.


#### ETL & Database

Once we had all the above identified within our datasources, we began to parse and transform the data into forms that were fucntional for all later stages of the analysis. Many different excel tools & functions were used in order to complete this first step, such as, sumif & sumifs, vlookups, conditional formatting, cut & paste, count, counts, countif & much more. Once the data had been vetted, it was then time to convert it into a pandas dataframe. We used the pandas library of python in order to convert it into an easily readable table for our machine learning model to read and use. But before that could happen we had to create and structure a system to house the data. 

![image](https://user-images.githubusercontent.com/84881187/141701725-9da0e4ed-506a-42d4-b418-b7b6692f1e33.png)


In order to fill this missing piece we created a SQL database using PGAdmin in order to store and house our data. It was at this step that we thought it helpful to merge our race/ethnicity table with our low income table. This was completed using SQL within the database, which in turn created a new data table for our use. Once all the data tables were aggregated and successfully stored within our database they were sent applied to our Machine Learning model.
![Vacc_by_County_df](https://user-images.githubusercontent.com/84881187/140678174-5bc9d9c7-742b-4814-a5fa-2fba68399f2f.PNG)
![Datatypes](https://user-images.githubusercontent.com/84881187/141400709-2a6b04b3-62a3-4533-bf12-29dcec134e50.PNG)


Following the initial preprocessing, the demographic features were narrowed down to 'Households with Elderly', 'Households with Children', 'Income Groups', 'Percent of Poverty Level', 'Low-to-Moderate Income (LMI) Group', 'Housing Unit Type', 'Education Level', 'Head of Household Age', 'Race / Ethnicity'. The index, 'Economic Development Region' and 'LMI Population Segment' were removed from the file because the 'index' and 'Economic Development Region' were extraneous labels and 'LMI Population Segment' is an aggregate of two features that are already captured in the data ('Low-to-Moderate Income (LMI) Group', 'Housing Unit Type'). The rows with null data were also removed and the demographic features were recoded using OneHotEncoder to change the categorical data to numeric so it can be used in the model. The encoded data were then merged back into the original demographic file and the data was summed and aggregated by county.

#### Final Preprocessing
The vaccination and demographic dataframes were then merged to create one file with the vaccination rates and demographics for each county. The county was then dropped from the dataframe. 
![final_Df](https://user-images.githubusercontent.com/84881187/141401092-5fed8e04-0bb7-4275-bf2c-d98c6dee0047.PNG)


### Feature Engineering & Selection

Our team was initially interested in seeing if any demographics could predict vaccination rates so we included all demographic features from the data sources we had available. The features include those related to age (i.e., Households with Elderly, Households with Children, Head of Household Age), Race / Ethnicity, Education Level, Housing (e.g., single family home, multi-family apartment unit), Income (Household Income, Percent of Poverty Level, Low-to-Moderate Income groups) and Population. <br/>


#### Hypotheses

Income inequality remains one of the largest predictors of health equity. Our team recognizes the barriers that many individuals face to obtain proper healthcare, which includes accessibly to facilities as well as the distribution of scientifically factual information to communities. As such, we hypothesized that the primary predictive factor of vaccination status would be household income. <br/>

H1: Demographic factors (i.e., Population, Age, Income, Race, Education, Housing) impact vaccination rates among New York State residents. <br/>
H2: Of all demographic factors, income is most predictive of vaccination rates among New York State residents. <br/>

#### Hypothesis Testing - Multiple Regression
To determine what demographic variables could be predictors of vaccination rate, a multiple regression was conducted with the preprocessed data. <br/>

Independent Variables: Population, Age, Income, Race, Education, Housing <br/>
Dependent Variable: Vaccination Rate <br/>

*[R script file](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Analysis/multipleregression.R)*

## Results
None of the demographic variables predicted vaccination rates with *Adjusted R-squared* = 0.4769, *p* = 0.1286 and all demographic variables *p* > 0.1. There may be a marginally significant relationship between Income Groups $0 to < $10,000 and vaccination rates as it had the lowest p-value of all demographic variables (*p* = 0.113). Given that our dataset was limited to 46 New York State Counties / County Groups, the multiple regression was likely under-powered. For future research, we recommend expanding the dataset to a larger region (e.g., the United States) to ensure there are enough counties to power the multiple regression model. <br/>

*[R Output](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/hrabasco-ml-p3/Analysis/multiple_regression_results.txt)*

#### Feature Selection
Given that there was not a significant relationship between vaccination rates and any demographic factors, we chose to not exclude any demographic factors from our model. 

#### Train & Test Data
For the model, we split the data using scikit-learn's train_test_split and scaled the data by fitting a StandardScaler instance. 

### Machine Learning Model

#### Model Choice
We chose to use a neural network to predict vaccination rates because the model behaves like a regression model, where a dependant variable or target (i.e., vaccination rates) can be predicted from independent variables or features (i.e., demographic information). 

#### Limitations
* One key limitation of this model is that it does not allow us to pinpoint the exact feature or set of features that are most predictive of vaccination rates. 
* Because we are trying to predict rates (i.e., a continuous variable) rather than a category (e.g., vaccinated / not vaccinated), we are also unable to calculate the accuracy of the model or generate a confusion matrix. Rather than determine the success of the model based on accuracy, we calculate the mean squared error (i.e., loss) and use the distance between the test and train loss to determine whether the model was successful at predicting the target. 

#### Benefits
* The primary benefit of this model is that it can be used to predict the vaccination rate based on a large number of demographic factors. 

#### Changes to the Model
* We simplified the original model to prevent overfitting, which was causing a large difference between the test and train loss. The original model had two hidden layers with 100 nodes per layer and multiple activation functions (tanh and relu). 
* The current model only has one hidden layer with 10 nodes and one activation function (tanh). 

#### Model Summary
![model_summary](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Analysis/model_summary.png)

#### Model Training
The current and original models were both trained for 100 epochs. 

#### Model Results
The mean squared error (i.e., loss) was was used to determine the model's efficacy. The model loss for the training and testing data were 0.1391 and 0.1382 respectively. The less than 0.01 difference between the model loss for the training and testing data indicates that the model effective at predicting vaccination rates based on the demographic features. 



## Credits

### Data_Sources

[Vaccination Table Schema](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Resources/Vacc_Data_Schema.csv) <br/>

[Demographic Table Schema](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Resources/census_data_schema.csv) <br/>

[*See All Data Sources*](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/tree/main/Resources) <br/>

### Resource Links

https://covidactnow.org/data-api

https://covidtracking.com/

https://health.data.ny.gov/browse?tags=covid-19

gis.ny.gov/gis

NYC Census Data:

https://www1.nyc.gov/site/planning/planning-level/nyc-population/2020-census.page##2020-census-results


### Technology

* GeoJson Mapping
* Java Script
* HTML
* https://covidactnow.org/data-api
* CSS
* PandaS
* Python
* GoogleCollab
* SQL DB
* SciKitLearn and Tensorflow
* Tableau tables
* Heroku
* VS Code

[*See More Information*](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Technology.md)

## Dashboard

### Presentation Story Board: [see here](https://docs.google.com/presentation/d/1c9cfA28_8GVU7xcNCX7rOtGATN4EiccQRYXfeIIyXYQ/edit?usp=sharing)

## Interactive Dashboard: [see here]()



## Project Roles

* Kyle Y.: Github, Databasing, & Tech

* Helena R.: Github & Machine Learning

* Kristin A.: Machine Learning & Visualization

* Tara K.: Database & Heroku, & Visualization

* Portia W.: Database & Visualization

* John F.: Database & Tech







