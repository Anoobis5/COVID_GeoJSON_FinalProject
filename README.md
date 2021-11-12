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


### Design
* Features: Demographics - Race, Population, Household Income, Family Status & Education
* Target: Vaccination Rate


### Machine Learning Model

* **Model**: We are using a neural network model to predict the COVID-19 vaccination rates of New York State residents. The model behaves like a regression model, where a dependant variable (vaccination rates) can be predicted from independent variables (demographic information). 
* **Training**: The model uses 1 hidden layer with 10 nodes. The hidden layer uses the tanh function. The output layer uses the linear activation function to predict the vaccination rates. The data was trained for 100 epochs. This model was simplified from the initial model (reduced the number of hidden layers and nodes) to prevent overfitting. See the model summary below. 
* **Results**: The mean squared error (i.e., loss) was used to determine the model's efficacy. The model loss for the training and testing data were 0.1391 and 0.1382 respectively. 

**Model Summary**<br/>
![model_summary](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/hrabasco-ml-p2/Analysis/model_summary.png)

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

# COVID Vaccination Rates GeoJSON Project

## Project Overview

The purpose of this analysis is to gain insight into what factors impact COVID-19 vaccination rates for New York State residents. Are there certain demographic factors (e.g., household income) that predict vaccination rates of New York State residents?

## Table of Contents

 - [Installation](#installation)
 - [Analysis](#Analysis)
 - [Results](#results)
 - [Results](#credits)
 - [Data Sources](#Data Sources)

## Installation

Requirements to begin the project. Technology used. and base codes

## Analysis

descriptions and examples of code on how wwe analyse the data.
[insert pics here]

## Results
\


## Data Sources


