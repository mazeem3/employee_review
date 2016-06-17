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
            @performance = 'satisfactory'
        elsif review == 'performance has been satisfactory'
            @performance = 'satisfactory'
        else (review == 'performance has not met expectations')
             @performance = 'unsatisfactory'
        end
    end

    def give_raise(percent)
        @salary = (@salary * percent) + @salary
    end
end
