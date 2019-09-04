require './lib/account'

class Person
    attr_accessor :name, :cash, :account

    def initialize(attrs= {}) 
        set_name(attrs[:name]) 
        @cash = 0
        @account = nil
    end

    def create_account(attrs = {})
        @account = Account.new(owner: self)
    end

    def deposit_funds(attrs = {})
        account != nil ? @cash = 100 : raise('no account present')
    end

    private
    def set_name(obj)
        obj == nil ? no_name : @name = obj 
    end

    def no_name
        raise "A name is required" 
    end

end
