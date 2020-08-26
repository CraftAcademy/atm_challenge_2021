class Account
    attr_accessor :pincode
    attr_accessor :balance
    attr_accessor :account_status
    attr_accessor :exp_date
    attr_accessor :account_owner

    def initialize(pincode)
        @pincode = '1234'
    end

    def initialize(balance)
        @balance = balance
    end

    def initialize(account_status)
        @account_status = :active
    end

    def initialize(exp_date)
        @exp_date = '04/22'
    end

    def initialize(account_owner)
        @account_owner = account_owner
    end
end


