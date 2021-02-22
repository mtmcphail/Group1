# Technologies Used
## Data Cleaning and Analysis
Pandas will be used to clean the data and perform an exploratory analysis. Further analysis will be completed using Python.

## Database Storage
PostgreSQL is the database we intend to use to store the clean data and merge multiple tables if needed.

## Machine Learning
SciKitLearn is the machine learning library we'll be using to create a regression to determine if the desired output consists of one or more continuous variables. In this case would be the prediction of the a person having a stroke given his/her gender, age, health conditions, and smoking status. Our training and testing setup is as follows:

### 1. sklearn.model_selection: train_test_split
Splitting a single dataset for two different purposes: training and testing. The training subset is for building machine learning model and testing subset is for using the model to evaluate the performance of the model.

### 2. sklearn.preprocessing: StandardScaler
This is to ensure that the data has a relatively normal distribution. Data scaling can be achieved by normalizing or standardizing real-valued input and output variables.

### 3. sklearn.preprocessing: OneHotEncoder
This will encode categorical features as a one-hot numeric array. The encoder will derive the categories based on the unique values in each feature.

## Dashboard
We will be using Tableau to interactively display our findings. The dashboard will be presented in the form of Tableau story.