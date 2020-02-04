require 'date'

class Atm
    attr_accessor :funds


    def initialize 
        @funds = 1000
    end

    def withdraw(amount, pin_code, account) 
    
        case 
        when insufficient_funds_in_account?(amount, account)
            { status: false, message: 'Unsuccessful because of insufficient funds', date: Time.now.strftime("%Y-%m-%d")}
        when insufficient_funds_in_ATM?(amount)
            { status: false, message: 'Unsuccessful because insufficient funds in ATM', date: Time.now.strftime("%Y-%m-%d") }
        when incorrect_pin?(pin_code, account.pin_code)
            { status: false, message: 'Unsuccessful because of wrong pin code', date: Time.now.strftime("%Y-%m-%d") }
        when card_expired?(account.exp_date)
            { status: false, message: 'Unsuccessful because card has expired', date: Time.now.strftime("%Y-%m-%d") }
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

    def incorrect_pin?(pin_code, actual_pin)
        pin_code != actual_pin
    end 

    def card_expired?(exp_date)
        Date.strptime(exp_date, '%m/%y') < Date.today
    end
    
end