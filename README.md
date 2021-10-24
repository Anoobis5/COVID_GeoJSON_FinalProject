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
* **Accuracy**: The initial model is a regression model so it does not capture accuracy. The mean squared error (i.e., loss) is used to determine the model's efficacy. The mean squared error for the initial model is 2.68. 


### Data Sources
[All Data Sources](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/tree/main/Resources)
Vaccination Table Schema
Demographic Table Schema
Census Bureau Data

### Technology
* SQL DB
* Tensorflow
* Tableau tables
* Heroku

### __Resources__


NYC COVID Github:

https://github.com/nychealth/coronavirus-data.git

https://data.ny.gov/

https://covidtracking.com/

https://health.data.ny.gov/browse?tags=covid-19


### Roles

* Kyle: Github, Database, & Tech

* Helena: Github & Machine Learning

* Kristin: Machine Learning & Visualization

* Tara: Database & Heroku, & Visualization

* Portia: Database & Visualization

* John: Database & Tech



