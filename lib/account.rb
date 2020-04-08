class Account
    attr_accessor :pin_code, :exp_date
    STANDARD_VALIDITY_YRS = 5


    def initialize
        @pin_code = rand(1000..9999)
        @exp_date = Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end
end