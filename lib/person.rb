require './lib/account'
require './lib/atm'

class Person

    attr_accessor :name, :cash, :account 

    def initialize(attrs = {}) 
        @name = set_name(attrs[:name])
        @cash = 0
        @account = nil
        
        
    end

    def create_account 
        @account = Account.new(owner: self)
    end
    

    def deposit(amount)
        @account == nil ? missing_account : deposit_funds(amount)
    end

    def withdraw(args = {})
        @account == nil ? missing_account : withdraw_funds(args)    
    end

    private

    def set_name(name)
        name == nil ? missing_name : @name = name
    end

    def missing_name
        raise 'A name is required'
    end

   
    def deposit_funds(amount)
        
            @cash -= amount
            @account.balance += amount
    end

    def missing_account
        raise RuntimeError, 'No account is present'
    end

    def no_account_is_set
        raise RuntimeError, 'No account is set'
    end

end
