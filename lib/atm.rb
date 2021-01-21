class Atm
    attr_accessor :funds
    def initialize
        @funds = 1000
    end

    def withdraw(amount, pin_code, account)
        case
        when insufficient_funds_in_account?(amount, account)
            return { status: false, message: 'insufficient funds', date: 'today' }
        when insufficient_funds_in_atm?(amount)
            { status: false, message: 'insufficient funds in ATM', date: 'today' }
        when incorrect_pin?(pin_code, account.pin_code)
            { status: false, message: 'wrong pin', date: 'today' }
        else
            perform_transaction(amount, account)
        end
    end

    private

    def insufficient_funds_in_account?(amount, account)
        amount > account.balance 
    end
    
    def perform_transaction(amount,account)
        @funds = @funds - amount
        account.balance = account.balance - amount
        return { status: true, message: 'success', date: 'today', amount: amount}
    end
    
    def insufficient_funds_in_atm?(amount)
        @funds < amount
        
    end

    def incorrect_pin?(pin_code, actual_pin)
        pin_code != actual_pin
    end
    
    

end
