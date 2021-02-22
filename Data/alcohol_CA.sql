-- Creating tables for Population within 1/4 mile of Alcohol Outlet
CREATE TABLE alcohol_qrt_mile (
	Indicator_ID VARCHAR(4) NOT NULL,	
	ind_definition VARCHAR NOT NULL,	
	reportyear VARCHAR(4) NOT NULL,
	race_eth_code VARCHAR(1) NOT NULL,	
	race_eth_name VARCHAR(10) NOT NULL,
	geotype VARCHAR(2) NOT NULL,
	geotypevalue VARCHAR NOT NULL,
	geoname VARCHAR NOT NULL,
	county_name VARCHAR,	
	county_fips_id VARCHAR (4) NOT NULL,
	region_name	VARCHAR (4),
	region_code	VARCHAR (2),
	license_type VARCHAR NOT NULL,
	num_people_qrt INT NOT NULL,	
	tot_people	INT NOT NULL,
	pct_of_total INT NOT NULL,
	PRIMARY KEY (county_fips_id)
	);

-- Creating tables for County Level personal income
CREATE TABLE personal_income (
	county_fips_id VARCHAR (4) NOT NULL,
	county_name VARCHAR NOT NULL,
	region_code	VARCHAR (2),	
	table_CA VARCHAR (3),
	lineCode VARCHAR (1),	
	per_capita_income INT,
	total_income INT,
	PRIMARY KEY (county_fips_id)
	);
	
-- Creating tables for County Level unemployment 2011-2019 median house value
CREATE TABLE unemployment (
	county_fips_id VARCHAR (4) NOT NULL,
	county_name VARCHAR NOT NULL,	
	year_2011 DATE NOT NULL,	
	unemp_2011 INT,
	year_2012 DATE NOT NULL,	
	unemp_2012 INT,
	year_2013 DATE NOT NULL,	
	unemp_2013 INT,
	year_2014 DATE NOT NULL,	
	unemp_2014 INT,
	year_2015 DATE NOT NULL,	
	unemp_2015 INT,
	year_2016 DATE NOT NULL,	
	unemp_2016 INT,
	year_2017 DATE NOT NULL,	
	unemp_2017 INT,
	year_2018 DATE NOT NULL,	
	unemp_2018 INT,
	year_2019 DATE NOT NULL,	
	unemp_2019 INT,
	median_house_tag CHAR,
	median_house_price INT,
	median_house_pct INT,
	PRIMARY KEY (county_fips_id)
	);
	

-- Creating tables for County Level personal income
CREATE TABLE typology_CA (
	county_fips_id VARCHAR (4) NOT NULL,
	state_abbre VARCHAR (2) NOT NULL,	
	county_name	VARCHAR NOT NULL,
	metro_status INT NOT NULL,
	economic_types VARCHAR (1),
	Economic_Type_Label	VARCHAR,
	Farming_2015 INT,	
	Mining_2015 INT,	
	Manufacturing_2015 INT,	
	Government_2015 INT,	
	Recreation_2015 INT,
	Nonspecialized_2015 INT,	
	Low_Education_2015 INT,	
	Low_Employment_Cnty INT,
	Pop_Loss_2010 INT,	
	Retirement_Dest_2015 INT,
	Persistent_Poverty_2013 INT,	
	Persistent_Child_Poverty_2013 INT,
	PRIMARY KEY (county_fips_id)
	);