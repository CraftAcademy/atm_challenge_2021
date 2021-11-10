require 'account.rb'

class Person
    
    attr_accessor :name, :cash, :account
    
    def initialize(name = '')
        name == '' ? missing_name : @name = name
        @cash = 0
    end

    def create_account
        @account = Account.new({owner: @name})
    end

    def deposit(amount)
        deposit_amount(amount)
    end

    private

    def missing_name
        raise 'A name is required'
    end

    def deposit_amount(amount)
        @account.balance += amount
    end

end