class Account

    STANDARD_VALIDITY_YRS = 5
    attr_accessor :exp_date, :account_status

    def initialize
        @exp_date = set_expire_date
        @account_status = :active
    end

    def set_expire_date
        Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end

    def deactivate
        @account_status = :deactivated
    end
end
