class Account
    attr_accessor :pin_code, :exp_date, :status

    def initialize 
        @pin_code = '1234'
        @exp_date = 04/20
        @status = :active
    end
    
end
