class Atm
    attr_accessor :funds

    def initialize
        @funds = 1000
    end

    def withdraw(amount, account)
        @funds -= amount
    end

    case
    when amount > account.balance   
    else
        @funds -= amount
        account.balance = account.balance - amount
        { status: true, message: 'success', date: '2020', amount: amount}
    end



end
