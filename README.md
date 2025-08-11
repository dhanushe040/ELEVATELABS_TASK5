# ELEVATELABS_TASK5
📘 SQL Join Examples with Sample Outputs
This section showcases various SQL join types using employee and department data. Each example includes a descriptive title and sample output for clarity and learning.

🔹 Join Employee and Department Tables on DEPTID
Combines employee records with department names using INNER JOIN. Sample Output: Employees matched with their respective departments.

🔹 Retrieve All Records from EINFO and EDEPT (Cartesian Product)
Returns all possible combinations of rows from both tables (no join condition). Sample Output: Every employee paired with every department.

🔹 Fetch Employee Details with City Name Using INNER JOIN on CITYID
Displays employee designation, salary, and city name. Sample Output: Only employees with matching city records are shown.

🔹 Get Contact Details of Employee Named RAJARAM Using INNER JOIN
Filters contact info for a specific employee using a WHERE clause. Sample Output: Shows both email and phone number for Rajaram.

🔹 List All Employees with Their City (Using LEFT JOIN on CITYID)
Includes all employees, even if city info is missing. Sample Output: Employees without a city show blank values.

🔹 Show All Cities with Their Employees Using RIGHT JOIN on CITYID
Includes all cities, even if no employee is linked to them. Sample Output: Cities like Pune and Hyderabad appear even without employees.

🔹 List Employees with Their Manager Names Using Self JOIN on EINFO
Shows employees along with their manager’s name from the same table. Sample Output: Displays hierarchical relationships within the employee table.

🔹 Combine All Employees and Cities Using LEFT and RIGHT JOIN with UNION
Emulates a FULL OUTER JOIN in MySQL by combining unmatched rows from both sides. Sample Output: Includes all employees and all cities, even if not linked.
