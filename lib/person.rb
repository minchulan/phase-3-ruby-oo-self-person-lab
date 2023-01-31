require 'pry'

# Create Class
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name 
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end 

    def clean?
        if self.hygiene > 7
            true
        else 
            false 
        end 
    end 

    def happy?
        if self.happiness > 7
            true
        else 
            false 
        end 
    end 

    def get_paid(amount)
        @bank_account + amount 
        "all about the benjamins"
    end 

    def take_bath
        @hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        @happiness += 2
        @hygiene -= 3
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend = "Felix")
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend}! It's Stella. How are you?"
    end 

    def start_conversation(friend, topic)
        if topic = "politics"
            self.happiness -= 2
            friend.happiness -=2
            "blah blah partisan blah lobbyist"
        elsif topic = "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else  
            "blah blah blah blah blah" 
        end 
    end 

        # case topic
        # when "politics"
        #     self.happiness -= 2
        #     friend.happiness -=2
        #     "blah blah partisan blah lobbyist"
        # when "weather"
        #     self.happiness += 1
        #     friend.happiness += 1
        #     "blah blah sun blah rain"
        # else   
        #    "blah blah blah blah blah" 
        # end 
end 