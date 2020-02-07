class Account
    attr_accessor :account_status, :exp_date, :pin_code, :balance, :owner
    require 'date'

    STANDARD_VALIDITY_YRS = 5

    def initialize(attrs = {})
        @account_status = :active
        @exp_date = set_expire_date()
        @owner = set_owner(attrs[:owner])
        @pin_code = set_pin_code() 
        @balance = 0
    end

    def deactivate #instance method
        @account_status = :deactivated
    end 

    def set_expire_date
        Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
        #hoppar över detta moment:Do you really need
        #Account::STANDARD_VALIDITY_YRS? Perhaps 
        #STANDARD_VALIDITY_YRS in enough?Try it out 
    end


    private

    def set_pin_code
        rand(1000..9999)
    end

    def set_owner(obj)
        obj == nil ?  missing_owner : @owner = obj
    end
      
    def missing_owner
        raise "An Account owner is required"
    end

    
end