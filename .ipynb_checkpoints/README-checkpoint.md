# Crowdfunding_ETL
**Johnathan Tran & Megan O'Connor**</br>
Overview of project: 
- Create an ETL pipeline using Python, Pandas, and Python dictionaty methods or regular expressions to extract and transform the data. 
- From the transformed DataFrames, create four csv files.
- Use the csv files to create an ERD and table schema.

## ETL Pipeline
### Create the Category & Subcategory DataFrames
Use the [crowdfunding.xlsx](https://github.com/KoBlades/Crowdfunding_ETL/blob/main/Resources/crowdfunding.xlsx) to create the [category.csv](https://github.com/KoBlades/Crowdfunding_ETL/blob/main/Resources/category.csv) and [subcategory.csv](https://github.com/KoBlades/Crowdfunding_ETL/blob/main/Resources/subcategory.csv) files, each holding the category ID and category name.</br>
This was done by taking the 'category & sub-category' column of the crowdfundding dataset and separating it out into 2 separate columns, 'category' and 'subcategory'. The IDs were then created by creating numpy arrays paired with "cat" and "subcat" using list comprehension to create IDs like "cat1" and "subcat1."

### Create the Campaign DataFrame
Used the cleaned crowdfunding DataFrame to create the [campaign.csv](https://github.com/KoBlades/Crowdfunding_ETL/blob/main/Resources/campaign.csv) which contains information about each company and their goal amount, pledge amount, goal outcome (success or failure), number of backers, country, currency, launched date, end date, and the category and subcategory IDs.