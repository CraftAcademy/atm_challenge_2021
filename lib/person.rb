class Person
    attr_accessor :name, :cash, :account, :atm

    def initialize(attrs = {})
        @name = set_name(attrs[:name])
        @cash = 0
        @account = nil
        @atm = nil
    end

    def set_name(name)
        name == nil ? missing_name : name
    end

    def missing_name
        raise "A name is required"
    end

    def create_account
        @account = Account.new(owner: self) 
    end

    def deposit(amount)
        @account == nil ? missing_account : deposit_funds(amount)
    end

    def missing_account
        raise RuntimeError, 'No account present'
    end

    def deposit_funds(amount)
        account.balance += amount
        @cash -= amount 
    end

    def withdraw(args = {})
        args[:atm] == nil ? missing_atm : withdraw_funds(args)
    end

    def missing_atm
        raise RuntimeError, 'An ATM is required'
    end

    def withdraw_funds(args)
        args[:atm].withdraw(args[:amount], args[:pin], args[:account])
        @cash += args[:amount]
    end

end