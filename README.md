Skip to content
Search or jump to…
Pull requests
Issues
Marketplace
Explore
 
@wallaceportia 
Anoobis5
/
COVID_GeoJSON_FinalProject
Public
1
01
Code
Issues
Pull requests
1
Actions
Projects
Wiki
Security
Insights
COVID_GeoJSON_FinalProject
/
README.md
in
main
 

Spaces

2

Soft wrap
1
## **COVID-19 Vaccination Rate Analysis**
2
​
3
### Overview
4
The purpose of this analysis is to gain insight into what factors impact COVID-19 vaccination rates for New York City residents. 
5
​
6
### Research Question
7
Are there certain demographic factors (e.g., household income, population density) that predict vaccination rates of New York City residents?
8
​
9
### Design
10
* Features: Demographics - Race and Population Density
11
* Target: Vaccination Rate
12
​
13
​
14
### Machine Learning Model
15
* **Model**: For our initial model, we are using a deep learning model to predict the COVID-19 vaccination rates of New York City residents. The neural network model behaves like a regression model, where a dependant output variable (vaccination rates) can be predicted from independent input variables (demographic information). 
16
* **Training**: The initial model uses 3 layers including the output layer. The first two layers have 20 nodes each and use the ReLU function. The output layer uses the linear activation function to predict the vaccination rates. The data was trained for 100 epochs. 
17
* **Accuracy**: The initial model is a regression model so it does not capture accuracy. The mean squared error (i.e., loss) is used to determine the model's efficacy. The mean squared error for the initial model is 2.68. 
18
​
19
​
20
### Data Sources
21
[All Data Sources](https://github.com/Anoobis5/COVID_GeoJSON_FinalProject/tree/main/Resources)
22
Vaccination Table Schema
23
​
24
Demographic Table Schema
25
​
26
Census Bureau Data
27
​
28
### Technology
29
* SQL DB
30
* Tensorflow
31
* Tableau tables
32
* Heroku
33
​
34
### __Resources__
35
​
36
​
37
NYC COVID Github:
38
​
39
https://github.com/nychealth/coronavirus-data.git
40
​
41
https://data.ny.gov/
42
​
No file chosen
Attach files by dragging & dropping, selecting or pasting them.
@wallaceportia
Commit changes
Commit summary
Create README.md
Optional extended description
Add an optional extended description…
 Commit directly to the main branch.
 Create a new branch for this commit and start a pull request. Learn more about pull requests.
 
© 2021 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
