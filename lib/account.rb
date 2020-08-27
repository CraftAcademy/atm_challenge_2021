class Account

    STANDARD_VALIDITY_YRS = 5

    attr_accessor :pin_code, :exp_date, :account_status, :owner, :balance 
    def initialize (attrs = {} )
        @owner = name
        @exp_date = Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%Y')
        @pin_code = rand(1000..9999)
        @account_status = :active
        @balance = 0
    end
end

   
