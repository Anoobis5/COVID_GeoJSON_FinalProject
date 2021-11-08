## **COVID-19 Vaccination Rate Analysis**

### Overview

The purpose of this analysis is to gain insight into what factors impact COVID-19 vaccination rates for New York State residents. 

### Research Question
Are there certain demographic factors (e.g., household income, population density) that predict vaccination rates of New York City residents?

### Project Outline
  *First: we needed to collect data on COVID-19 Vaccination Rates for New York State, and data on New York State residents
  *Next: we pulled data from all applicable data sources, cleaned, transformed, and merged our data in a database using PostgreSQL as our database.
  *Then: we also collected API data for our GeoJSON map and interactive data elements.
  *Next: we created schemas for our MachineLearning model.
  *Finally: We will analyze our data, and visualize it on a dashboard.
  
  
### Contributor Communication Protocols

  * Each member of the data analysis team communicates via a Slack message channel. 
  * Collaborative, transdiciplinary, approaches are used to solve problems and analyses.
  * Merges are confirmed as a group to reduce merge conflicts/errors.
  * Personal Phone Numbers are also exchanged for assistance as pre-detrmined availability times.


### Design
* Features: Demographics - Race, Polulation Density, Income, and Education
* Target: Vaccination Rate


### Machine Learning Model

* **Model**: For our initial model, we are using a deep learning model to predict the COVID-19 vaccination rates of New York City residents. The neural network model behaves like a regression model, where a dependant output variable (vaccination rates) can be predicted from independent input variables (demographic information). 
* **Training**: The initial model uses 3 layers including the output layer. The first two layers have 20 nodes each and use the ReLU function. The output layer uses the linear activation function to predict the vaccination rates. The data was trained for 100 epochs. 
* **Accuracy**: The initial model is a regression model which does not capture accuracy. The mean squared error (i.e., loss) is used to determine the model's efficacy. The mean squared error for the initial model is 2.68. 


### Data Sources

[Vaccination Table Schema](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Resources/Vacc_Data_Schema.csv) <br/>

[Demographic Table Schema](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Resources/census_data_schema.csv) <br/>

[*See All Data Sources*](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/tree/main/Resources) <br/>

### Technology
* SQL DB
* SciKitLearn and Tensorflow
* Tableau tables
* Heroku

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
