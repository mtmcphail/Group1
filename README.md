![logo](./Images/liquor_license.jpeg)

# Liquor Licences and Close-Proximity Population Demographics  


## Overview

The CDC publishes a fascinating dataset detailing the racial/ethnic percentages of persons living within 0.25 miles of an establishment with a liquor license.  Much research has been conducted to investigate the the relationship between proximity to liquor establsihments and demographics such as race and socioeconomic factors.

By layering additional demographic and socioeconomic data including income levels, poverty, unemployment, housing prices indicators, we can get a better picture of phenomenons that occur such outlets. 

This project **hopes to answer the following questions**:

* Is there a racial or ethnic population more likely to live within a quarter-mile of a liquor licensed establishment?
* What is the racial or ethnic breakdown of populations within a quarter-mile of a liquor licensed establishment? 
* Is there a correlation between income and proximity to an alcohol outlet?

Ultimately, the goal is to build a machine learning model (using linear regression) that can **predict the likelihood of a liquor outlet is within a quarter-mile of a person's home based on their race/ethnicity and location**. 

## Data Source
There are 4 datasets that will be used to build this model and create visualizations:

1.  The first, and primary, dataset comes from [HealthData.gov](https://healthdata.gov/dataset/population-percentage-within-quarter-mile-alcohol-outlets).  This file contains **2014** data for the state of California of population demographics of residents living within a quarter-mile of an alcohol establishment: ```population_pct_within_qrt_mile_alcohol.csv```

2. This dataset, from the [Bureau of Economic Analysis](https://www.ers.usda.gov/data-products/county-typology-codes/), provides county-level data regarding persistent poverty, metro vs non-metro status, low education status, retirement destination, as well as other descriptive, binary factors. ```2015CountyTypologyCodes.csv```

3.  The file ```personal_income_2014.csv``` also comes from [Bureau of Economic Analysis](https://www.ers.usda.gov/data-products/county-typology-codes/)   details the per capita personal income by county.
 
4. The final dataset from the [U.S. Bureau of Labor Statistics](https://www.bls.gov/lau/) , ```UnemploymentReport_CA.csv```, trends out unemployment rate from 2011 through 2019 by County detailing the median house price for that county. 
 
All of these datasets have been filtered to focus on California and its County-level information targeting 2014.  


## Database

First step in creating this predictive model and getting the answers we are looking for, is to import the raw data into SQL and create a schema outlining the table structure and interconnections.

This is done using **PostGres** and **SQL**; ERD schematic below: 

![logo](./Images/erd.png)

Once the team is ready to start analyzing, the data is connected directly to a **Python** Notebook to be read in using importing ```create_engine``` from **sqlalchemy**. 

At which point we are ready to clean, transform, and preprocess our dataset.  ***That's where the fun begins!***

## Machine Learning Model
The following **technologies**, modules, and functions within **Python** will be used to read in, prepare and transform the data: 

* pandas
* sklearn
	* model_selection: ```train_test_split```
	* preprocessing: ```StandardScaler``` 
	* preprocessing: ```OneHotEncoder```


Once the dataset is cleaned and transformed, we can start compiling, training, and evaluating the model.  A **Linear Regression model** will be employed as the predicted outcome of this model will be in the form of a **continuous dependent variable**.

The following imports will be called:

* sklearn.linear_model: LinearRegression
* sklearn.metrics: balanced_accuracy_score
* sklearn.metrics: mean_squared_error

Our **input factors (y)** will include:
	          
* ```race_eth_code```        
* ```race_eth_name```                          
* ```county_name```        
* ```county_fips_id```     
* ```region_name```         
* ```region_code```        
* ```license_type```        
* ```num_people_qrt```    
* ```tot_people```         
* ```pct_of_total``` 
* ```pi_per_cap_income```
* ```pi_total_income```
* ```pi_popultaion```
* ```unemp_2014```
* ```unemp_median_house_price```
* ```typ_metro_status```
* ```typ_low_ed```
* ```typ_low_employment```	
* ```typ_Pop_loss_2010```	
* ```typ_retirement```
* ```typ_poverty```
* ```typ_child```   

Our **target or (X)** will be the percentage of the population, ```pct_of_total``` within a quarter mile of the alcohol outlet.

## Dashboard Presentation
The dashboard will be built using **Tableau**.  Visualizations to tell this story will include graphs, heat maps and interactive predictions. 

*Be on the look out for our findings in the coming weeks!*


## GitHub and Communication Protocol

### GitHub
In order to accomplish this massive task, this team will be utilizing GitHUb to collaborate.  In addition to our main (or master branch), this repository contains the following branches: 

* Machine Learning (Triangle): ```devin_branch```
* Technology (X): ```jackie_data_analytics```
* GitHub (Square): ```maggies_data_analysis```
* Database (Circle):```nazanin-data-analytics```

Each week, our team will have a minimum of 4 commits per member.  
For Week 1:

![logo](./Images/weekly_commits.png)


### Communication Protocol
In addition to utilizing GitHub and our Slack channel, this team will meet weekly during and/or before normal class times on **Monday and Wednesday evenings** as well as via zoom as needed.

Each team member has a role to play and for **Week 1** they are: 

* **Circle Role (Database)**:  Nazanin Tavakoli
* **Triangle Role (Machine Learning)**  Devin Hollister 
* **Square Role (GitHub)**: Maggie McPhail 
* **X Role (Technology)**: Jackie Chitsanga

Once a team member is ready with their portion of the assignment, the Square will be notified, create a pull request to merge to the main and resolve any resulting conflicts. The rest of the team will be notified via Slack when to pull the updated main branch.
   

