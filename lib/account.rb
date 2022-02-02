class Account

    STANDARD_VALIDITY_YRS = 5

    attr_accessor :exp_date, :account_status, :pin_code, :balance, :owner

    def initialize(attrs = {})
        @pin_code = set_pin_code
        @balance = 0
        @exp_date = set_expire_date
        @account_status = :active
        set_owner(attrs[:owner])
    end

    def set_expire_date
        Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%Y')
    end

    def deactivate
        @account_status = :deactivated
    end

    private

    def set_owner(obj)
        obj == nil ? missing_owner : @owner = obj
    end
    
    def missing_owner
        raise "An Account owner is required"
    end

end