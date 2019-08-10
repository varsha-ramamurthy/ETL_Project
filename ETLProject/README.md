# ETL_Project
ETL Project pulling data from reviews of different wines in csv and json format and storing these wine reviews databases in a SQL database

**Please note to enter in your own Postgres credentials as well as unzip all the data files. We had to compress them in order to push them up to Github

# Wine Reviews ETL Project
From kaggle, we obtained a dataset on wine reviews, containing both csv and json files which had data on different wines based on description of taste according to each taster, and location. The data-set "Global wine points" obtained from data.world had data on different wines based mostly on "vintage" and geographical statistics. Using the csv and json files extracted from these two data sources on different wines across the world, we were able to transform the data using Pandas, by converting to dataframe, merging the dataframes, and doing a cleanup before loading the cleaned dataframe into an SQL database created to hold it.

### Extract

- Data sets on reviews of different types of wine were obtained from two different sources (data.world, kaggle).
- From kaggle, we were able to obtain from the data-set "wine reviews" both csv and json files. 
- From data.world, we obtained a csv file from the data-set "Global wine points," which included additional fields of "vintage" and "variety"
- The two data-sets were extracted in order for me to transform the csv files they contained
- For the JSON dataset, we filtered on only the best wines with points that equaled 100.

### Transform

- Using pandas, the csv files from "wine reviews" and "Global wine points" were imported and converted to dataframes
- The column names for the two dataframes were adjusted to be identical in order to ensure successful merging
- Once merged, the merged dataframe was cleaned, with the removal of all "NaN" values and columns with unnecessary and excessive data were removed in order to avoid memory errors

### Load

- SQL database was the tool of choice used for loading our newly cleaned dataframe
- a new databse was created in SQL, and subsequently a table for the wine reviews, with columns identical to those of the cleaned dataframe
- Using pandas, the connect_engine command was used to connect to SQL, and the wine reviews database with the table. 
- The cleaned dataframe made in the 'Transform' stage was successfully loaded into our SQL database
