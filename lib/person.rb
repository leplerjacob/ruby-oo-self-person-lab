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

    def hygiene=(points)
        @hygiene = points > 10 ? 10 : (points < 0 ? 0 : points)
    end

    def happiness=(points)
        @happiness = points > 10 ? 10 : (points < 0 ? 0 : points)
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false        
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=@hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        
    end

    def call_friend
    
    end

    def start_conversation
    
    end

end



