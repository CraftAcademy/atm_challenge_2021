require 'date'
require 'pry'
# pin_code, :balance, :account_status, :exp_date, :owner
class Account
    attr_accessor :pin_code, :exp_date, :account_status, :owner, :balance
    STANDARD_VALIDITY_YEARS = 5
    def initialize(owner_arg = {})
       @pin_code = rand(1000..9999)
       @exp_date = set_expire_date
       @account_status = :active
       @owner = set_owner(owner_arg[:owner])
       @balance = 100
    end
    
    def deactivate
        @account_status = :deactivated
    end

    private

    def set_expire_date
        Date.today.next_year(STANDARD_VALIDITY_YEARS).strftime('%m/%y')
    end
    
    def set_owner(owner)
        owner == nil ? raise_owner_error : owner
    end

    def raise_owner_error
        raise 'Account doesnt have an owner'
    end





end

