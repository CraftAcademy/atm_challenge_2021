require 'date'

class Atm
    attr_accessor :funds
  
    def initialize 
        @funds = 1000
    end

    def withdraw(amount, pin_code, account) 
    
        case 
        when account_inactive?(account.account_status)
            { status: false, message: 'Unsuccessful because the account is inactive', date: Date.today}
        when insufficient_funds_in_account?(amount, account)
            { status: false, message: 'Unsuccessful because of insufficient funds', date: Date.today}
        when insufficient_funds_in_ATM?(amount)
            { status: false, message: 'Unsuccessful because insufficient funds in ATM', date: Date.today}
        when incorrect_pin?(pin_code, account.pin_code)
            { status: false, message: 'Unsuccessful because of wrong pin code', date: Date.today}
        when card_expired?(account.exp_date)
            { status: false, message: 'Unsuccessful because card has expired', date: Date.today}
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
        { status: true, message: 'Successful', date: Date.today, amount: amount, bills: add_bills(amount) }
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

    def account_inactive?(account_status)
        account_status != :active
    end

    def add_bills(amount)
        denominations = [20, 10, 5]
        bills = []
        
        denominations.each do | bill |
            while amount - bill >= 0
                amount -= bill
                bills << bill
            end
        end
        bills
    end
end