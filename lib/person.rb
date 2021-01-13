# your code goes here
# require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    
    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def hygiene=(point)
        if point > 10
            @hygiene = 10
        elsif point < 0
            @hygiene = 0
        else
            @hygiene = point
        end
        @hygiene
    end

    def happiness=(point)
        if point > 10
            @happiness = 10
        elsif point < 0
            @happiness = 0
        else
            @happiness = point
        end
        @happiness
    end

    def happy?
        return @happiness > 7 ? true : false
    end

    def clean?
        return @hygiene > 7 ? true : false        
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=@hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

end



