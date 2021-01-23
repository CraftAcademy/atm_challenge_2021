require 'date'
require 'pry'
# pin_code, :balance, :account_status, :exp_date, :owner
class Account
    attr_accessor :pin_code, :exp_date, :account_status
    STANDARD_VALIDITY_YEARS = 5
    def initialize
       @pin_code = rand(1000..9999)
       @exp_date = set_expire_date
       @account_status = :active
    end
    
    def set_expire_date
        Date.today.next_year(STANDARD_VALIDITY_YEARS).strftime('%m/%y')
    end

    def deactivate
        @account_status = :deactivated
    end
    
    





end

