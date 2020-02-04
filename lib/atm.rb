class Atm
    attr_accessor :funds


    def initialize 
        @funds = 1000
    end

    def withdraw(amount, account) 
    
        case 
        when amount > account.balance
            return
            # result = {status: false, message: "Fail because of {enter message here}", 
            #             date: Time.now.strftime("%Y-%M-%d"), amount: amount, remaining: account.balance }
        else
            @funds -= amount
            account.balance = account.balance - amount
            { status: true, message: 'Successful', date: Time.now.strftime("%Y-%m-%d"), amount: amount }
        
        end    
    end 
end