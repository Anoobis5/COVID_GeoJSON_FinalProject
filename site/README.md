## **COVID-19 Vaccination Rate Analysis**

### Overview

The purpose of this analysis is to gain insight into what factors impact COVID-19 vaccination rates for New York City residents. 

### Research Question
Are there certain demographic factors (e.g., household income, population density) that predict vaccination rates of New York City residents?


### Design
* Features: Demographics - Race and Population Density
* Target: Vaccination Rate


### Machine Learning Model

* **Model**: For our initial model, we are using a deep learning model to predict the COVID-19 vaccination rates of New York City residents. The neural network model behaves like a regression model, where a dependant output variable (vaccination rates) can be predicted from independent input variables (demographic information). 
* **Training**: The initial model uses 3 layers including the output layer. The first two layers have 20 nodes each and use the ReLU function. The output layer uses the linear activation function to predict the vaccination rates. The data was trained for 100 epochs. 
* **Accuracy**: The initial model is a regression model which does not capture accuracy. The mean squared error (i.e., loss) is used to determine the model's efficacy. The mean squared error for the initial model is 2.68. 


### Data Sources

[Vaccination Table Schema](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Resources/Vacc_Data_Schema.csv) <br/>

[Demographic Table Schema](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Resources/census_data_schema.csv) <br/>

[*See All Data Sources*](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/tree/main/Resources) <br/>
gis.ny.gov/gis data
### Technology
* SQL DB
* Tensorflow
* Tableau tables
* Heroku
* VS Code

[*See More Information*](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Technology.md)



### Roles

* Kyle: Github, Database, & Tech

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
