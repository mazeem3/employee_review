class Employee
    attr_accessor :name, :email, :phone, :salary, :reviews, :performance

    def initialize(name, email, phone, salary)
        @name = name
        @email = email
        @phone = phone
        @salary = salary.to_i
        @reviews = []
    end

    def add_review(review)
        @reviews << review
    end
    
    def determine_performance(review)
        if review == 'performance has exceeded expectations'
             'Great job, you deserve a raise!'
        elsif review == 'performance has been satisfactory'
             'Keep up the good work, still have room for improvement'
        else (review == 'performance has not met expectations')
             'Come see me in my office'
        end
    end

    def give_raise(percent)
        @salary = (@salary * percent) + @salary
    end
end
