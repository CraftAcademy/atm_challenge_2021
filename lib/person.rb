

class Person
    attr_accessor :name, :cash, :account
 end
    def initialize(attrs = {})
 @name = set_name(attrs[:name])
 @cash = 0
 @account = set_account_owner()
 end

