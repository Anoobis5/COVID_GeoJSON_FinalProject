## **COVID-19 Vaccination Rate Analysis**

### Overview

The purpose of this analysis is to gain insight into what factors impact COVID-19 vaccination rates for New York State residents. 

### Research Question
Are there certain demographic factors (e.g., household income) that predict vaccination rates of New York State residents?

### Project Outline

  * First: we needed to collect data on COVID-19 Vaccination Rates for New York State, and data on New York State residents. Since COVID-19 research in on going, there were a lot of different datasources for us to comb through. We aimed to target COVID-19 vaccination rates among various demographics within the residents of New York State by county.

![Vacc_by_County_df](https://user-images.githubusercontent.com/84881187/140678174-5bc9d9c7-742b-4814-a5fa-2fba68399f2f.PNG)

  * Next: we pulled data from all applicable data sources, cleaned, transformed, and merged our data in a database using PostgreSQL as our database. You can find the links to the various data sources below.


  * Then: we also collected API data for our GeoJSON map and interactive data elements. Fortunately, the site covidactnow.org consolidated several of the datasource we were already using, along with regularly update API.


  * Next: we created schemas for our MachineLearning model to run the analysis. We then used a neural network model to predict the COVID-19 vaccination rates of New York State residents. The model behaves like a regression model, where a dependant variable (vaccination rates) can be predicted from independent variables (demographic information). 


  * Finally: We will analyze our data, and visualize it on a dashboard using Heroku, Tableau, and an interactive GeoJSON map. We used the Vaccination Data and Census data to analyze COVID-19 Vaccination Rates across several demographics among New York State Residents, including, income, education, and ethnicity. See below for some examples of our data visuals  to be used in the completed dashboard:
  ![Income_and_Education](https://user-images.githubusercontent.com/84881187/140678561-628ee2d4-3acf-45d1-85e0-8e0a33d43ccc.PNG)

![Ethnicity of Covid Cases](https://user-images.githubusercontent.com/84881187/140678892-c45b4c45-ca02-4ae0-87d1-d700008bbf7c.PNG)

  
### Contributor Communication Protocols

  * Each member of the data analysis team communicates via a Slack message channel. 
  * Collaborative, transdiciplinary, approaches are used to solve problems and analyses.
  * Merges are confirmed as a group to reduce merge conflicts/errors.
  * Personal Phone Numbers are also exchanged for assistance as pre-detrmined availability times.

## Machine Learning & Feature Selection

### Preprocessing

#### Vaccination Preprocessing
#### Vaccination and Mapping Preprocessing
Firstly vaccination data preprocessing began with finding a site that contained useful and functional information aboute Covid-19 and vaccinations; the site Covid Act Now was found to have such information and had a downloadable data and needed Rest API. <br/>

#### Vaccination Data Preprocessing/Python and Pandas
All preprocessing was done in in a Jupyter Notebook, to clean the data and ultimately convert that data into a JavaScript data file.  
The data was imported to Jupyter Notebook and then changed into a CSV file from which the DataFrame was created. 

![Pandas DataFrame](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Resource_Pics/JN_PandasDF.PNG)

Investigative work and cleaning was done on the DataFrame. Columns with Nans would be replaced with zeros. We were interested in using the metric for distributed vaccines to see if this was a predictor for vaccinations but this columns was filled with Nans.

![Data Investigating](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Resource_Pics/DF_Columns.PNG)

The fetch function was used to compile the data from the DataFrame that would be used for mapping. 

![Fetch Function]()

The data was then put into a dictionary, called c_data and this was converted into a json file.

![C_data json file]()

The JSON file was then converted to a JavaScript file


Secondly for creation of the map of New York State, we needed NYS county lines. Initially from the http://gis.ny.gov/gis site, a NYS county shape file was download.
This file however needed to be converted into a JavaScript file to use for mapping, however after converting the file it was unuseable as the coordinates were to large.

A secondary search led to the nycounties.geojson files which was ultimately used to create the county lines.
The D3.JSON command was used on both files in order to create the map.  

In order to use this data in the model, the counties were grouped to match the county/county group labels in the demographic data. The county groups' vaccination rates were averaged and the population and vaccination counts were summed to create aggregate scores. This vaccination data was then imported into a Google Colab notebook for further preprocessing. The columns were narrowed down to the county/county group names, total population and vaccination rate. Any rows with null data were dropped and the columns were renamed to 'County', 'Total_Pop' and 'Vax_Rate' for clarity. 

#### Demographic Preprocessing
ADD JOHN'S DESCRIPTION OF DEMO/INCOME PREPROCESSING HERE <br/>

Following the initial preprocessing, the demographic features were narrowed down to 'Households with Elderly', 'Households with Children', 'Income Groups', 'Percent of Poverty Level', 'Low-to-Moderate Income (LMI) Group', 'Housing Unit Type', 'Education Level', 'Head of Household Age', 'Race / Ethnicity'. The index, 'Economic Development Region' and 'LMI Population Segment' were removed from the file because the 'index' and 'Economic Development Region' were extraneous labels and 'LMI Population Segment' is an aggregate of two features that are already captured in the data ('Low-to-Moderate Income (LMI) Group', 'Housing Unit Type'). The rows with null data were also removed and the demographic features were recoded using OneHotEncoder to change the categorical data to numeric so it can be used in the model. The encoded data were then merged back into the original demographic file and the data was summed and aggregated by county.

#### Final Preprocessing
The vaccination and demographic dataframes were then merged to create one file with the vaccination rates and demographics for each county. The county was then dropped from the dataframe. 

### Feature Engineering & Selection

Our team was initially interested in seeing if any demographics could predict vaccination rates so we included all demographic features from the data sources we had available. The features include those related to age (i.e., Households with Elderly, Households with Children, Head of Household Age), Race / Ethnicity, Education Level, Housing (e.g., single family home, multi-family apartment unit), Income (Household Income, Percent of Poverty Level, Low-to-Moderate Income groups) and Population. Of these demographic factors, our team hypothesized that income would be the best predictor of vaccination rates. <br/>

ADD MORE DETAIL ON KRISTIN'S HYPOHTESIS HERE

#### Hypotheses
H1: Demographic factors (i.e., Population, Age, Income, Race, Education, Housing) impact vaccination rates among New York State residents. <br/>
H2: Of all demographic factors, Income is most predictive of vaccination rates among New York State residents. <br/>

#### Hypothesis Testing - Multiple Regression
To determine what demographic variables could be predictors of vaccination rate, a multiple regression was conducted with the preprocessed data. <br/>

Independent Variables: Population, Age, Income, Race, Education, Housing <br/>
Dependent Variable: Vaccination Rate <br/>

*[R script file](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Analysis/multipleregression.R)*

#### Results
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

### Data Sources

[Vaccination Table Schema](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Resources/Vacc_Data_Schema.csv) <br/>

[Demographic Table Schema](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Resources/census_data_schema.csv) <br/>

[*See All Data Sources*](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/tree/main/Resources) <br/>

### Technology
* PandaS
* Python
* GoogleCollab
* SQL DB
* SciKitLearn and Tensorflow
* Tableau tables
* Heroku
* VS Code

[*See More Information*](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Technology.md)


### Presentation Story Board: [see here](https://docs.google.com/presentation/d/1c9cfA28_8GVU7xcNCX7rOtGATN4EiccQRYXfeIIyXYQ/edit?usp=sharing)


### Resource Links

https://covidactnow.org/data-api

https://covidtracking.com/

https://health.data.ny.gov/browse?tags=covid-19

gis.ny.gov/gis

NYC Census Data:

https://www1.nyc.gov/site/planning/planning-level/nyc-population/2020-census.page##2020-census-results



## Role Interests

* Kyle: Github, Databasing, & Tech

* Helena: Github & Machine Learning

* Kristin: Machine Learning & Visualization

* Tara: Database & Heroku, & Visualization

* Portia: Database & Visualization

* John: Database & Tech


# Technologies Used

## Data Cleaning and Analysis
Pandas, Python and Google Collab will be used to clean the data and perform an exploratory analysis.

## Database Storage
PostgreSQL is the database we intend to use for our data.

## Machine Learning
SciKitLearn and Tensorflow were the ML libraries we'll be using to create a classifier.

## Dashboard
We will be using Heroku to fomulate our dashboard. We plan on using Flask, and we may also integrate D3.js for a fully functioning and interactive visualizations on our dashboard.

* GeoJson Mapping
* Java Script
* HTML
* https://covidactnow.org/data-api
* CSS

## GeoJson Maps
Pandas,Python will be used to read and clean data
To create maps: Code will be written in JavaScript using VS Code. D3.JSON will be used to process both the c_data and nys county boundries
For GeoJson mapping visualizations and styling, MapBox and Leaflet, CSS will be used 

