# SQL-Challenge
Module 9 Challenge

# Background
The major task of this research project is about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files. 
To analyse this project use **Postgres**
This Project contains three parts,
  1. **Data Modelling**\
     Under the data modelling, Inspect the CSV files, and then sketch an ERD of the tables. To create the sketch, use this tool [https://app.quickdatabasediagrams.com/#/d/2rVgs3]
  2. **Data Engineering**\
     Under this topic, complete the following steps.
     - Specify the data types, primary keys, foreign keys, and other constraints.
     - For the primary keys, verify that the column is unique. Otherwise, create a [https://en.wikipedia.org/wiki/Composite_key], which takes two primary keys to uniquely identify a row.
     - Create the tables in the correct order to handle the foreign keys.
 3. **Data Analysis**\
    It is recommended to create an Entity Relationship Diagram (ERD) before commencing the analysis process.\
    To get ERD visit [`ERD.png`](https://github.com/lakigit/sql-challenge/blob/main/ERD.png)
- The expected outputs are as follows. Here, included only the top 10 results for reference.
    1. List the employee number, last name, first name, sex, and salary of each employee.\
    **Output:**\
 ![image](https://github.com/lakigit/sql-challenge/assets/138610916/979dddf1-9392-47bf-99b1-682fdc6d414f)
    2. List the first name, last name, and hire date for the employees who were hired in 1986.\
    **Output:**\
![image](https://github.com/lakigit/sql-challenge/assets/138610916/6283ac89-12d3-4edc-b09d-81ce3c592875)
    3. List the manager of each department along with their department number, department name, employee number, last name, and first name.\
    **Output:**\
![image](https://github.com/lakigit/sql-challenge/assets/138610916/d22500d4-b776-4eba-a5f8-77bcd7eaa247)
    4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.\
    **Output:**\
![image](https://github.com/lakigit/sql-challenge/assets/138610916/7a24a8dd-7305-442e-89c3-cda85b9207e3)
    5. List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.\
    **Output:**\
![image](https://github.com/lakigit/sql-challenge/assets/138610916/1eb70149-9fab-4a50-9003-a1b916849b2c)
    6. List each employee in the Sales department, including their employee number, last name, and first name.\
    **Output:**\
![image](https://github.com/lakigit/sql-challenge/assets/138610916/72951bce-0c77-447f-a0dc-ee7b9c18cc8e)
    7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.\
    **Output:**\
![image](https://github.com/lakigit/sql-challenge/assets/138610916/bd7198d4-81e4-485e-9172-5a88349c2091)
     8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).\
    **Output:**\
![image](https://github.com/lakigit/sql-challenge/assets/138610916/28b2159f-37d9-4929-82e5-53f024ea9964)

     
# Other Information
- The CSV file of the employee includes their date of birth and date of hire in the MM/DD/YYYY format, whereas PostgreSQL uses the yyyy-mm-dd format to store and insert date values. As a result, both birth and hire dates are stored as "VARCHAR" instead of "DATE".
- To delete tables, use the CASCADE option because project CSVs are linked with other tables. In PostgreSQL, the CASCADE option is used with the DROP TABLE command to drop the tables that have dependent objects. In PostgreSQL, the DROP TABLE drops single or multiple tables.
 
# Code File
- [`schema.sql`](https://github.com/lakigit/sql-challenge/blob/main/schema.sql) is codes for create tables.
- [`queries.sql`](https://github.com/lakigit/sql-challenge/blob/main/queries.sql) is for other queries.
- [`ERD_table schema.txt`](https://github.com/lakigit/sql-challenge/blob/main/ERD_table%20schema.txt) is code for create ERD.

