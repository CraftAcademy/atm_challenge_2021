class Atm
    attr_accessor :funds
    require 'date'

    def initialize
        @funds = 1000
    end

    def withdraw(amount, account)
        
        case # kollar om det finns pengar på kontot
        when insufficient_funds_in_account?(amount, account)
            return
            
        else # om pengar finns så får man ta ut pengar
            perform_transaction(amount, account)
        end
    end

    private
    def insufficient_funds_in_account?(amount, account)
        amount > account.balance
    end

    def perform_transaction(amount, account)
        @funds -= amount
        account.balance = account.balance - amount
        { status: true, message: 'success', date: Date.today, amount: amount }
    end

   


end
