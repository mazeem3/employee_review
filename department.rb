require './employee'
class Department

attr_accessor :dept_name , :employee_list
  def initialize(input)
    @dept_name = input
    @employee_list = []
    @sum_salary = []
  end
  def add_employee(employee)
    @employee_list << (employee)
  end
  def sum_salary
     @sum_salary = @employee_list.map do |employee|
       employee.salary
     end
     @sum_salary.reduce(:+)
  end
  def department_bonus
  end

end
