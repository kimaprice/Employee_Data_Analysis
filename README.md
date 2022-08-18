# Employee_Data_Analysis

## Background

Pewlett Hackard requested research on employees of the corporation from the 1980s and 1990s. All that remains of the database of employees from that period are six CSV files.

#### Data Modeling

The six CSV files (listed below) were evaluated and a basic ERD created in [QuickDatabaseDiagrams](http://www.quickdatabasediagrams.com) to list out the tables

CSV files:
* departments.csv
* dept_emp.csv
* dept_manager.csv
* employees.csv
* salaries.csv
* titles.csv

#### Data Engineering

* Table schemas were created for each of the six CSV files, including data types, primary keys, foreign keys, and other constraints.

* Each CSV file was imported into the corresponding SQL table. 

#### Data Analysis

Queries were created to review the following information:

1. A list of the following details of each employee: employee number, last name, first name, sex, and salary.

2. A list of first name, last name, and hire date for employees who were hired in 1986.

3. A list of the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. A list of the department of each employee with the following information: employee number, last name, first name, and department name.

5. A list of first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. A list of all employees in the Sales department, including their employee number, last name, first name, and department name.

7. A list of all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. A list of the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

## Deeper Analysis and Findings
As I examined the data, there were some inconsistencies and oddities that made me concerned that the data was not accurate. Further analysis was required to ascertain if the data could be trusted.

#### Deeper Analysis
 

#### Findings



## Repo Contents

* PH_employee_db_ERD.png: image file of PH_employee_db ERD.

* table_schemata.sql:  `.sql` file of table schemata for PH_employee_db.

* PH_employee_analysis_queries.sql:  `.sql` file of queries for exploring the data as mentioned above.

* XXXXXXXXXXXXX: Jupyter notebook containing statistical analysis of data.