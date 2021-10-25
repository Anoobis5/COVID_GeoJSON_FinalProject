## **COVID-19 Vaccination Rate Analysis**

### Overview
The purpose of this analysis is to gain insight into what factors impact COVID-19 vaccination rates for New York State residents. 

### Research Question
Are there certain demographic factors (e.g., household income, population density) that predict vaccination rates of New York State residents?

### Design
* Features: Demographics - Race and Population Density
* Target: Vaccination Rate


### Machine Learning Model
* **Model**: For our initial model, we are using a deep learning model to predict the COVID-19 vaccination rates of New York State residents. The neural network model behaves like a regression model, where a dependant output variable (vaccination rates) can be predicted from independent input variables (demographic information). 
* **Training**: The initial model uses two hidden layers. The hidden layers have 20 nodes each and use the ReLU function. The output layer uses the linear activation function to predict the vaccination rates. The model was trained for 100 epochs. 
* **Results**: The mean squared error (i.e., loss) for the initial model is 2.68. Note, this model is a regression model, which does not capture accuracy. 


### Data Sources

[Vaccination Table Schema](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Resources/Vacc_Data_Schema.csv) <br/>

[Demographic Table Schema](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Resources/census_data_schema.csv) <br/>

[*See All Data Sources*](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/tree/main/Resources) <br/>

### Technology
* SQL DB
* Tensorflow
* Tableau tables
* Heroku

[*See More Information*](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/blob/main/Technology.md)

### Roles

* Kyle: Github, Database, & Tech

* Helena: Github & Machine Learning

* Kristin: Machine Learning & Visualization

* Tara: Database & Heroku, & Visualization

* Portia: Database & Visualization

* John: Database & Tech
