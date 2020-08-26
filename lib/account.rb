require 'date'
class Account
    STANDARD_VALIDITY_YRS = 5


    attr_accessor :pincode
    attr_accessor :balance
    attr_accessor :account_status
    attr_accessor :exp_date
    #attr_accessor :account_owner

    def initialize(pincode)
        @pincode = rand(1000...9999)
    end

    def initialize(balance)
        @balance = balance
    end

    def initialize(account_status)
        @account_status = :active
    end

    def initialize(exp_date)
        @exp_date = 04/22
    end

  #  def initialize(account_owner)
  #      @account_owner = account_owner
    #end

    def set_expire_date
        Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%Y')
    end
end


