require 'date'
require './lib/account.rb'
require './lib/atm.rb'

class Person

    attr_accessor :name, :cash, :account
    

  def initialize(attrs = {})
    @name = set_name(attrs[:name])
    @cash = 0
    @account = nil
  end

  def create_account
    @account = Account.new(owner: self)
  end

  def deposit(amount)
    account.balance += amount
    @cash -= amount
  end

  def withdraw(args = {})
  @account == nil ? missing_account : withdraw_funds(args)
  end

  def is_there_account?(amount)
    @account == nil ? missing_account : deposit(amount)
  end

  
private

def set_name(obj)
  obj == nil ?  missing_name : @name = obj
end

def add_cash(response)
  @cash += response[:amount]
end

def withdraw_funds(args)
  args[:atm] == nil ? missing_atm : atm = args[:atm]
  account = @account
  amount = args[:amount]
  pin = args[:pin]
  response = atm.withdraw(amount, pin, account)
  response[:status] == true ? add_cash(response) : response
end

  def missing_account
  raise RuntimeError, 'No account present'
  end

  def missing_name
  raise "A name is required"
  end

  def missing_atm
    raise RuntimeError, 'An ATM is required'
  end
end



