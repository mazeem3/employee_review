require 'minitest/autorun'
require_relative './emp_class'
require_relative './dep_class'

class EmployeeTest < Minitest::Test
    def test_new_employee_name
      new_employee = Employee.new
      new_employee.name = "Jon Snow"
    end
    def test_new_employee_email
      new_employee = Employee.new
      new_employee.email = "iknow@nothing.com"
    end
    def test_new_employee_phone
      new_employee = Employee.new
      new_employee.phone = "832-281-7130"

    end
    def test_new_employee_salary
      new_employee = Employee.new
      new_employee.salary = "50000"
    end
end

class Department_Test < Minitest::Test
  def test_new_dept_name
    new_dept = Department.new
    new_dept.name = "Computer Science"
  end
end
