# Human Resource Management Database (SQL)

## Project Overview  
This project provides a **Human Resource Management Database** to store and manage HR-related data such as employees, departments, salaries, and locations. It is designed for educational and professional use to perform SQL operations.

## Features  
- **Country & Region Data** – Stores information about different countries.  
- **Department Management** – Organizes departments and their managers.  
- **Employee Records (If available in the file)** – Tracks employees, roles, and salaries.  
- **SQL Queries for HR Analytics** – Run queries to analyze HR trends.  

## Database Schema  
The database consists of the following tables:  
- `countries` – Stores country names and region IDs.  
- `department` – Stores department names, IDs, and manager information.  
- *(Additional tables might be included, such as employees, salaries, attendance, etc.)*  

## Example SQL Queries  
```sql
-- Retrieve all departments
SELECT * FROM department;

-- List all countries available in the database
SELECT * FROM countries;

-- Find departments managed by a specific manager
SELECT * FROM department WHERE manager_id = 101;
