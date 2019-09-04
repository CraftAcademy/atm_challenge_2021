class Person
    attr_accessor :name, :cash, :account

    def initialize(attrs= {}) 
        set_name(attrs[:name]) 
        @cash = 0
        @account = account
    end

    private
    def set_name(obj)
        obj == nil ? no_name : @name = obj 
    end

    def no_name
        raise "A name is required" 
    end

end
