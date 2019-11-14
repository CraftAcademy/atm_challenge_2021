class Account

    STANDARD_VALIDITY_YRS = 5
    attr_accessor :exp_date, :account_status, :owner, :pin_code, :balance

    def initialize(attrs = {})
        @exp_date = set_expire_date
        @account_status = :active
        set_owner(attrs[:owner])
        @pin_code = randomize_pin
        @balance = 0
    end

    def set_expire_date
        Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y')
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

    def randomize_pin
        rand(1000..9999)
    end


end
