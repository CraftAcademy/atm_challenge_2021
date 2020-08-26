require 'date'
class Account
    STANDARD_VALIDITY_YRS = 5


    attr_accessor :pincode, :balance, :account_status, :exp_date, :account_owner
   
  
    def initialize
        @pincode = rand(1000...9999)
        @balance = 0
        @account_status = :active
        @exp_date = set_expire_date
        @account_owner = account_owner
    end
    
private

    def set_expire_date
        Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end
end


