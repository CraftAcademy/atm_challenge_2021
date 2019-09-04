class Account 
    STANDARD_VALIDITY_YRS = 5
    attr_accessor :pin_code, :balance, :exp_date, :account_status, :owner

    def initialize(attrs = {})
        @pin_code = rand(1000...9999).to_s
        @balance = 0
        @exp_date = '09/2024'
        @account_status = :active
        @owner = set_owner(attrs[:owner])
    end
    
    def set_expire_date
        Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%Y')
    end

    def self.deactivate(account)
        account.account_status = :deactivated
    end

    def deactivate
        @account_status = :deactivated
    end

    private
    def set_owner(obj)
        obj == nil ? missing_owner : obj
    end

    def missing_owner
        raise "An Account owner is required"
    end
end