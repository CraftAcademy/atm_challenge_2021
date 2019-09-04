class Account 
    STANDARD_VALIDITY_YRS = 5
    attr_accessor :pin_code, :balance, :exp_date, :account_status, :owner

    def initialize 
        @pin_code = '1234'
        @balance = 1000
        @exp_date = '09/2024'
        @account_status = :active
        @owner = 'Noel'
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

end
