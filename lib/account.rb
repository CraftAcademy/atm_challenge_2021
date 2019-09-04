require 'date'

class Account
  STANDARD_VALIDITY_YRS = 5
    attr_accessor :exp_date, :pin_code, :account_status

    def set_expire_date
      Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end

    def initialize(attrs = {})
      @exp_date = set_expire_date
      @pin_code = rand(1000..9999)
      @account_status = :active
    #   @owner(attrs[:owner])
    end

    def deactivate
      @account_status = :deactivated
    end

    private

    # def set_owner(obj)
    #   obj == nil ? missing_owner : @owner = obj
    # end

    # def missing_owner
    #   raise "An account owner is required"
    # end
end