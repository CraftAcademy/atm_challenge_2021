class Atm
    attr_accessor :funds
    require 'date'

    def initialize
        @funds = 1000
    end

    def withdraw(amount, account)
        @funds -= amount
    end

   


end
