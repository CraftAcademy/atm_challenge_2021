class Account
    attr_accessor :account_status

    STANDARD_VALIDITY_YRS = 5

    def initialize
        @account_status = :active 
    end

    def deactivate #instance method
        @account_status = :deactivated
    end 

    def set_expire_date
        Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%Y')
        #hoppar över detta moment:Do you really need
        #Account::STANDARD_VALIDITY_YRS? Perhaps 
        #STANDARD_VALIDITY_YRS in enough?Try it out 
    end


    private
    def set_owner(obj)
        obj == nil ?  missing_owner : @owner = obj
    end
      
    def missing_owner
        raise "An Account owner is required"
    end

    
end