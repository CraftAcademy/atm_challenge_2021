require_relative 'account.rb'
require_relative 'atm.rb'

class Person
    attr_accessor :name, :cash, :account, :atm

    def initialize(attrs = {})
        @name = set_name(attrs[:name])
        @cash = 0
        @account = nil
    end

    def create_account
        @account = Account.new(owner: self) 
    end

    def deposit(amount)
        @account == nil ? missing_account : sufficient_cash?(amount)
    end

    def missing_account
        raise RuntimeError, 'No account present'
    end

    def withdraw(args = {})
        args[:atm] == nil ? missing_atm : withdraw_cash(args)
    end

    def missing_atm
        raise RuntimeError, 'An ATM is required'
    end

    private

    def set_name(name)
        name == nil ? missing_name : name
    end

    def missing_name
        raise "A name is required"
    end

    def sufficient_cash?(amount)
        @cash < amount ? insufficient_cash : deposit_cash(amount)
    end

    def insufficient_cash
        raise 'Insufficient cash available'
    end

    def deposit_cash(amount)
        account.balance += amount
        @cash -= amount 
    end

    def withdraw_funds(args)
        atm_response = args[:atm].withdraw(args[:amount], args[:pin], args[:account])
        atm_response[:status] == true ? receive_cash(atm_response) : atm_response
    end

    def receive_cash(atm_response)
        @cash += atm_response[:amount]
    end
end