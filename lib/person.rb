require './lib/account'
require './lib/atm'
class Person 
    attr_accessor :name, :cash, :account
    def initialize (attrs = {})
       set_name(attrs[:name])
       @cash = 0
       @account = nil 

    end

    def set_owner_of_account(name)
        name
    end

    def create_account 
        @account = Account.new(owner: self)
    end
     
    def set_name(obj)
        obj == nil ? missing_name : @name = obj
    end

    def missing_name 
        raise 'A name is required'
    end

    def deposit(amount)
        amount = account  
        #@account  == nil ? missing_account : deposit_funds(amount)
    end
    #def deposit_funds(amount)
        #@cash -= amount
       # @account.balance += amount
    #end

        
    end

