require 'date'
require 'pry'
require './lib/account.rb'

class Person 
    attr_accessor :name, :cash, :account

    def initialize(name = {})
        @name = set_name(name[:name])
        @cash = 0
        @account
    end

    def open_account
        @account = Account.new({owner: @name})
    end

    def deposit(amount)
        @cash += amount
        @account.balance -= amount
    end

    private

    def set_name(name)
        name == nil ? raise_name_error : name
    end

    def raise_name_error
        raise 'A name is required'
    end

end