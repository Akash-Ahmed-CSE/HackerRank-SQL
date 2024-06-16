Select Max(salary*months), Count(Employee_id) from EMPLOYEE where salary * months = (Select Max(salary*months) from EMPLOYEE)
