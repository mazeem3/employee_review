require './department'
require './employee'
require 'minitest/autorun'

class CompanyTesting < MiniTest::Test
    def jason
        Employee.new('Jason Bourne', 'jason@yahoo.com', '281-000-0000', '50000')
    end

    def peter
        Employee.new('Peter Griffin', 'peter@yahoo.com', '832-000-0000', '10000')
    end

    def exceed_expectations_review
        'performance has exceeded expectations'
    end

    def satisfactory_review
        'performance has been satisfactory'
    end

    def bad_review
        'performance has not met expectations'
    end

    def faculty
        Department.new('Faculty')
    end

    def test_create_new_employee
        peter = peter()
        assert_equal peter, peter
    end

    def test_create_new_department
        faculty = faculty()
        assert_equal 'Faculty', faculty.dept_name
    end

    def test_add_employee_to_department
        faculty = faculty()
        jason = jason()
        faculty.add_employee(jason)
        includes_jason = faculty.employee_list.include? jason
        assert_equal true, includes_jason
    end

    def test_get_employee_salary
        emp_one = peter
        assert_equal 10_000, emp_one.salary
    end

    def test_sum_salary
        emp_one = jason
        emp_two = peter
        dept = faculty
        dept.add_employee(emp_one)
        dept.add_employee(emp_two)
        assert_equal 60_000, dept.sum_salary
    end

    def test_add_review
        emp_one = jason
        review = emp_one.add_review(exceed_expectations_review)
        assert_equal [exceed_expectations_review], review
    end

    def test_employee_performance
        emp_one = jason
        performance = emp_one.determine_performance(exceed_expectations_review)
        assert_equal 'satisfactory', performance
    end

    def test_give_employee_raise
        emp_one = jason
        emp_one.give_raise(0.10)
        assert_equal 55_000, emp_one.salary
    end

    def test_department_bonus
        emp_one = jason
        emp_two = peter
        emp_three = peter
        dept = faculty
        emp_one.determine_performance(exceed_expectations_review)
        emp_two.determine_performance(satisfactory_review)
        emp_three.determine_performance(bad_review)

        dept.add_employee(emp_one)
        dept.add_employee(emp_two)
        dept.add_employee(emp_three)
        dept.dept_raise(50_000)
        assert_equal 75_000, emp_one.salary
        assert_equal 35_000, emp_two.salary
        assert_equal 10_000, emp_three.salary
    end
end
