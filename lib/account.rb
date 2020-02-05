class Account
    attr_accessor(:pin_code, :balance, :account_status, :exp_date, :owner)

    STANDARD_VALIDITY_YRS = 5

    def initialize (attrs = {})
        @pin_code = rand(1000..9999)
        @exp_date = set_expire_date()
        @account_status = :active
        @owner = set_owner(attrs[:owner])
        @balance = 0
    end 

    def set_expire_date
        Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end

    def inactivate
        @account_status = :inactive
    end

    private
    
    def set_owner(obj)
        obj == nil ? missing_owner : @owner = obj
    end

    def missing_owner
        raise 'An account owner is required'
    end
end