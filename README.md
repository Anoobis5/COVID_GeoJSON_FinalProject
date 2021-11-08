## **COVID-19 Vaccination Rate Analysis**

### Overview

The purpose of this analysis is to gain insight into what factors impact COVID-19 vaccination rates for New York State residents. 

### Research Question
Are there certain demographic factors (e.g., household income) that predict vaccination rates of New York State residents?

### Project Outline

  * First: we needed to collect data on COVID-19 Vaccination Rates for New York State, and data on New York State residents
  * Next: we pulled data from all applicable data sources, cleaned, transformed, and merged our data in a database using PostgreSQL as our database.
  * Then: we also collected API data for our GeoJSON map and interactive data elements.
  * Next: we created schemas for our MachineLearning model to run.
  * Finally: We will analyze our data, and visualize it on a dashboard.
  
  
### Contributor Communication Protocols

  * Each member of the data analysis team communicates via a Slack message channel. 
  * Collaborative, transdiciplinary, approaches are used to solve problems and analyses.
  * Merges are confirmed as a group to reduce merge conflicts/errors.
  * Personal Phone Numbers are also exchanged for assistance as pre-detrmined availability times.


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
gis.ny.gov/gis data
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

