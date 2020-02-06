require './lib/account'

class Person
    attr_accessor(:name, :cash, :account)

    def initialize(attrs = {})
        @name = set_name(attrs[:name])
        @cash = 0
        @account = nil
    end

    def create_account
        @account = Account.new(owner: name)
    end

    def deposit(amount)
        if @account != nil
            account.balance += amount
            @cash -= amount
        else
            raise RuntimeError, 'No account present'
        end
    end

    def withdraw(args = {})
    @account == nil ? missing_account : withdraw_funds(args)
    end


    private 

    def withdraw_funds(args)
        args[:atm] == nil ? missing_atm : atm = args[:atm]
        account = @account
        amount = args[:amount]
        pin = args[:pin]
        response = atm.withdraw(amount, pin, account)
        response[:status] == true ? increase_cash(amount) : response
    end

    def set_name(obj)
        obj == nil ? missing_name : @name = obj
    end

    def missing_name
        raise ArgumentError, 'A name is required'
    end

    def missing_atm
        raise RuntimeError, 'An ATM is required'
    end

    def increase_cash(amount)
        @cash += amount
    end

end