# SQL-Challenge
For this week's module challenge our objective is to act as a new data engineer for the company Pewlett Hackard to do research on those employed during the 1980s and 1990s. We were given six CSV files that were imported into our SQL. It is absolutely important to import the data into their appropriate tables in order to avoid errors when performing the code. Each CSV file can be found within the EmployeeSQL folder under the folder titled "data."

###  **Data Modeling**
Create the tables in the following order: departments, titles, employees, dept_emp, dept_manager, salaries. Once the tables are created make sure to import the data into their corresponding table in the same order they were created. Departments, titles, employees have our primary keys and the remaining three tables have foreign keys which reference our main tables. The code for table creation can be found in the SQL_Challenge_Schemata file. Finally, to visualize the relationships between the tables click on the PNG file named SQL_Challenge_ERD_Image.

### **Data Engineering**
The goal of this module was to use the above CSV files to create tables to use the files in order to organize different tables based on what was asked. Using the SQL_Challenge_Query file, we can organize a company's information by departments, employee number,first name, last name, salaries, and sex. 

### **Data Analysis**
Using the query file it is divided into 8 sections based on the different tables needed to be visualized.   
1st Table: Employee Number, Last Name, First Name, Sex, Salary  
2nd Table: Last Name, First Name, and Hire Data specifically for employees hired in 1986  
3rd Table: Department Number, Department Name, Employee Number, Last Name, First Name specifically for individuals who are managers.  
4th Table: Department Number, Employee Number, Last Name, First Name, and Department Name for all employees.  
5th Table: Last Name, First Name, and Sex for individuals who have the first name 'Hercules' and whose last names start with the letter 'B.'  
6th Table: Department Name, Employee Number, Last Name and First Name for individuals specifically in the Sales Department.  
7th Table: Department Name, Employee Number, Last Name and First Name for individuals specifically in the Sales Department or the Development Department.  
8th Table: Last Name and Counts for all last names within the company organized in descending order.  

For this assignment, I collaborated with Nicolas Ortega and Brendan Golden in creating the code. 
