class Atm
    attr_accessor :funds


    def initialize 
        @funds = 1000
    end

    def withdraw(amount, account)
    
        case 
        when insufficient_funds_in_account?(amount, account)
            { status: false, message: 'Unsuccessful because of insufficient funds', date: Time.now.strftime("%Y-%m-%d")}
        when insufficient_funds_in_ATM?(amount)
            { status: false, message: 'Unsuccessful because insufficient funds in ATM', date: Time.now.strftime("%Y-%m-%d") }
        else
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
        { status: true, message: 'Successful', date: Time.now.strftime("%Y-%m-%d"), amount: amount }
    end

    def insufficient_funds_in_ATM?(amount)
        @funds < amount
    end

end