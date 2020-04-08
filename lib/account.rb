class Account
    attr_accessor :pin_code, :exp_date, :account_status
    STANDARD_VALIDITY_YRS = 5


    def initialize
        @pin_code = rand(1000..9999)
        @exp_date = Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
        @account_status = :active
    end

    def deactivate
        @account_status = :deactivated
    end
end