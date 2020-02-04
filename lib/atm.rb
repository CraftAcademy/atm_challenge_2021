class Atm
    attr_accessor :funds


    def initialize 
        @funds = 1000
    end

    def withdraw(amount)
        result = {}
    
        if @funds >= 0
            @funds -= amount
            result = {  status: true, message: "Successful", date: Time.now.strftime("%Y-%m-%d"), 
                        amount: amount}
        else
            result = {  status: false, message: "Fail because of {enter message here}", 
                        date: Time.now.strftime("%Y-%M-%d"), amount: amount, remaining: @funds }
        end 
        return result
    end
end


class printReciept(errorCode)
    @errorCode = errorCode
end