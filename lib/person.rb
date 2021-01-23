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
        if @cash < amount
            raise 'Not enough cash'
        elsif @account == nil
            raise 'No account present'
        else
            @cash -= amount
            @account.balance += amount
        end
    end

    def withdraw(args = {})
        args[:atm] == nil ? raise_atm_error : withdraw_func(args)
    end

    private

    def withdraw_func(args)
        true
    end

    def set_name(name)
        name == nil ? raise_name_error : name
    end

    def raise_name_error
        raise 'A name is required'
    end

end