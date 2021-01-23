require 'date'
require 'pry'
require './lib/account.rb'
require './lib/atm.rb'

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

    def deposit(args = {})
        if @cash < args[:amount]
            raise 'Not enough cash'
        elsif @account == nil
            raise 'No account present'
        else
            deposit_func(args)
        end
    end

    def withdraw(args = {})
        args[:atm] == nil ? raise_atm_error : withdraw_func(args)
    end

    private

    def withdraw_func(args)
        amount = args[:amount]
        pin_code = args[:pin_code]
        account = @account
        atm = args[:atm]
        atm_response = atm.withdraw(amount, pin_code, account)
        atm_response[:status] == true ? get_money(amount) : atm_response
        atm_response
    end

    def deposit_func(args)
        args[:atm] == nil ? throw_atm_error : atm = args[:atm]
        amount = args[:amount]
        @account.balance += amount
        @cash -= amount
        atm.funds += amount
        { status: true, message: 'Deposit was successful', amount: amount, date: Date.today }
    end

    def get_money(amount)
        @cash += amount
    end

    def set_name(name)
        name == nil ? raise_name_error : name
    end

    def raise_name_error
        raise 'A name is required'
    end

    def raise_atm_error
        raise 'No ATM present'
    end

end