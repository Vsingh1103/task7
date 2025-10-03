# task7
# SQL Views
## Objective
- Learn how to **create and use views** in SQL.  
- Understand how views provide **abstraction, simplification, and security**.  

## Tools
- DB Browser for SQLite  
- MySQL Workbench  


### Departments
| DepartmentID | DepartmentName | Location   |
|--------------|----------------|------------|
| 1            | HR             | New York   |
| 2            | Finance        | London     |
| 3            | IT             | New York   |
| 4            | Marketing      | Sydney     |

### Employees
| EmployeeID | Name     | DepartmentID | Salary  |
|------------|----------|--------------|---------|
| 101        | Alice    | 1            | 60000   |
| 102        | Bob      | 2            | 75000   |
| 103        | Charlie  | 3            | 90000   |
| 104        | David    | 3            | 85000   |
| 105        | Eva      | 4            | 70000   |
| 106        | Frank    | 2            | 95000   |
| 107        | Grace    | 1            | 50000   |


## Definitions and Usage Examples

###  Create a Simple View
Show only employee names and salaries (hiding department details).  
```sql
CREATE VIEW EmployeeSalaries AS
SELECT Name, Salary
FROM Employees;
