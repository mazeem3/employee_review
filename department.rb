require './employee'
class Department
    attr_accessor :dept_name, :employee_list
    def initialize(input)
        @dept_name = input
        @employee_list = []
        @sum_salary = []
    end

    def add_employee(employee)
        @employee_list << employee
    end

    def sum_salary
        @sum_salary = @employee_list.map(&:salary)
        @sum_salary.reduce(:+)
    end

    def dept_raise(amount)
        count = 0
        @employee_list.each do |employee|
            count += 1 if employee.performance == 'satisfactory'
        end
        bonus = (amount.to_i / count)

        @employee_list.each do |employee|
            employee.salary += bonus if employee.performance == 'satisfactory'
        end
   end
end
