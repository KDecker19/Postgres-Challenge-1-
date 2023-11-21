
-- Analysis of Employee Database---------


Select e.last_name, e.first_name, s.salary
FROM EmployeeInfo e
INNER JOIN EmpSalaries s
on e.emp_no = s.emp_no;


Select first_name, last_name, hire_date
FROM EmployeeInfo
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';




Select d.dept_np, d.dept_name, dm.emp_no, e.last_name, e.first_name
From Departments d
Inner Join DeptManager dm
on d.dept_no = dm.dept_no
Inner Join EmployeeInfo e
on dm.emp_no = e.emp_no;




Select de.emp_no, e.last_name, e.first_name, d.dept_name
From EmployeeInfo each
Inner Join DeptEmp de
on e.emp_no = de.emp_no
Inner Join Departments d
on de.dept_no = d.dept_no;




Select first_name, last_name, sex
from EmployeeInfo
where first_name = 'Hercules' and last_name like 'B%';



Select e.emp_no, e.last_name, e.first_name, d.dept_name
from EmployeeInfo e
Inner Join DeptEmp de
on e.emp_no = de.emp_no
Inner Join Departments d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales';




Select last_name, count(last_name) as "Frequency"
from EmployeeInfo
group by last_name
order by count(last_name) desc;


------------------------

