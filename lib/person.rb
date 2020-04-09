class Person
    attr_accessor :name, :cash, :account
    def initialize(attrs = {})
        set_name(attrs[:name])
        set_cash(attrs[:cash])
        set_account(attrs[:account])
    end

    def deposit(amount)
        @account == nil ? missing_account : deposit_funds(amount)
    end

    private
    def deposit_funds(amount)
        @cash -= amount
        #@account.balance += amount
    end

    def set_name(obj)
        obj == nil ? missing_name : @name = obj
    end

    def missing_name
        raise "A name is required"
    end

    def set_cash(amount)
        @cash = amount
    end

    def set_account(status)
        status == nil ? missing_account : @account = status
    end

    def missing_account
        raise "Missing account status"
    end


    public
    def create_account
        @account = Account.new(owner: self)
    end
end

