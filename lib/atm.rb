class Atm
    attr_accessor :funds

    
    def initialize 
        @funds = 1000
    end

    def withdraw(amount)
        @funds -= amount
        # sucess = { status => true, message => 'Successful', date => Time.now.strftime('%Y-%M-%D'), amout => amount, balance => @funds }
        # if @funds >= 0 
        #     return sucess
        # else 
        #     return unsucess
        # end
        result = Hash.new
        result['Successful']
        return result
    end


end