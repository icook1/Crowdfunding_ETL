# Crowdfunding_ETL
Project 2
ETL Mini Project By Ian Cook; Maria Kabeer and Parmeet Arora
 Summary
Project Overview
In this ETL (Extract, Transform, Load) mini-project, you and a partner will collaboratively build an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions. The project involves extracting and transforming data from Excel files, creating CSV files, designing a database schema, and loading the data into a Postgres database. The end goal is to generate a functional database that contains clean, organized data from a crowdfunding dataset, which can then be used for further analysis.
Project Steps
1.	Repository Setup:
o	One team member creates a GitHub repository named Crowdfunding_ETL and adds the other partner as a collaborator.
o	Clone the repository locally, rename the starter notebook with both members' initials, and push the changes to GitHub. Ensure both members have the updated notebook.
2.	Create Category and Subcategory DataFrames:
o	Extract data from the crowdfunding.xlsx file to create a category DataFrame with unique categories and a category_id column.
o	Similarly, create a subcategory DataFrame with unique subcategories and a subcategory_id column.
o	Export both DataFrames as category.csv and subcategory.csv.
3.	Create the Campaign DataFrame:
o	Extract and transform data from the crowdfunding.xlsx file to create a campaign DataFrame.
o	Include columns for campaign details such as cf_id, contact_id, company_name, description, goal, pledged, outcome, backers_count, country, currency, launch_date, end_date, category_id, and subcategory_id.
o	Export the DataFrame as campaign.csv.
4.	Create the Contacts DataFrame:
o	Extract and transform data from the contacts.xlsx file using one of two methods: Python dictionary methods or regular expressions.
o	Create a DataFrame with contact_id, first_name, last_name, and email.
o	Export the DataFrame as contacts.csv.
5.	Create the Crowdfunding Database:
o	Inspect the CSV files and design an Entity-Relationship Diagram (ERD) using QuickDBD to model the database structure.
o	Create a table schema based on the ERD, including data types, primary keys, foreign keys, and constraints.
o	Save the schema as a Postgres file (crowdfunding_db_schema.sql) and use it to create tables in a new Postgres database named crowdfunding_db.
o	Import the CSV files into the corresponding tables in the database and verify the data.
Collaboration and Time Management:
•	Since this is a one-week project, it is crucial to complete at least half of the work by the third day of class.
•	Even though the work may be divided, continuous collaboration and communication between partners are vital to ensure consistency and support.
Hints and Tips:
•	Use Pandas’ str.split() to separate category and subcategory data.
•	Use NumPy to create arrays for unique categories and subcategories.
•	Utilize list comprehensions for creating category and subcategory IDs.
•	Convert data types using Pandas' astype() and handle date-time conversions as necessary.
Requirements
A Category DataFrame is Created (15 points)
•	The DataFrame contains a "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories (5 points)
•	The DataFrame has a "category" column that contains only the category titles (5 points)
•	The category DataFrame is exported as category.csv (5 points)
A Subcategory DataFrame is Created (15 points)
•	The DataFrame contains a "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories (5 points)
•	The DataFrame contains a "subcategory" column that contains only the subcategory titles (5 points)
•	The subcategory DataFrame is exported as subcategory.csv (5 points)
A Campaign DataFrame is Created (30 points)
•	The DataFrame has the following columns: (25 points)
o	A "cf_id" column
o	A "contact_id" column
o	A "company_name" column
o	A "description" column
o	A "goal" column that is a float data type
o	A "pledged" column that is a float data type
o	An "outcome" column
o	A "backers_count" column
o	A "country" column
o	A "currency" column
o	A "launch_date" with the UTC times converted to the datetime format
o	An "end_date" with the UTC times converted to the datetime format
o	A "category_id" column that contains the unique identification numbers matching those in the "category_id" column of the category DataFrame
o	A "subcategory_id" column that contains the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
•	The campaign DataFrame is exported as campaign.csv (5 points)
A Contacts DataFrame is Created (15 points)
•	The DataFrame has the following columns: (10 points)
o	A "contact_id" column
o	A "first_name" column
o	A "last_name" column
o	An "email" column
•	The contacts DataFrame is exported as contacts.csv (5 points)
A Crowdfunding Database is Created (25 points)
•	A database schema labeled, crowdfunding_db_schema.sql is created (5 points)
•	A crowdfunding_db is created using the crowdfunding_db_schema.sql file (5 points)
•	The database has the appropriate primary and foreign keys and relationships (5 points)
•	Each CSV file is imported into the appropriate table without errors (5 points)
•	The data from each table is displayed using a SELECT * statement (5 points)

