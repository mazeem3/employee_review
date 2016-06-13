require 'minitest/autorun'
require_relative './emp_class'
require_relative './dep_class'

class EmployeeTest < Minitest::Test
    def test_new_employee
      jason = Employee.new("Jason Bourne", "jason@identity.com", "832-281-1713", "50000")
    end
end

class Department_Test < Minitest::Test
  def test_new_dept_name
    computer_science = Department.new("Computer Science")
  end
end
