require './lib/account'

class Person
    attr_accessor :name, :cash, :account

    def initialize(attrs = {})
        @cash = 0
        set_name(attrs[:name])
        @account = nil
    end

    def create_account
        self.account = Account.new(owner: self)
    end  

    def set_name(obj)
        obj == nil ? missing_name : @name = obj
    end

    def missing_name
        raise 'A name is required'
    end
end


