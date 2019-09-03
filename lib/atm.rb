class ATM
    attr_accessor :funds

    def initialize
        @funds = 1000
    end

    def withdraw(amount, account) 
        @funds -= amount
        @expected_output = { status: true, message: 'success', date: Date.today, amount: 45 }
    end
end