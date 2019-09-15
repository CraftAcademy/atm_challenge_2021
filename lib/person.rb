require './lib/account.rb'

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
    @account == nil ? missing_account : deposit_funds(amount)
  end

  def withdraw(argument = {})
    @account == nil ? missing_account : withdraw_funds(argument)
  end

  private

  def deposit_funds(amount)
    if @cash >= amount
      @cash -= amount
      @account.balance += amount
    else
      out_of_cash
    end
  end

  def withdraw_funds(argument)
    argument[:atm] == nil ? missing_atm : atm = argument[:atm]
    account = @account
    amount = argument[:amount]
    pin = argument[:pin]
    reply = atm.withdraw(amount, pin, account)
    reply[:status] == true ? increase_cash(reply) : reply
  end

  def increase_cash(reply)
    @cash += reply[:amount]
  end
  
  def set_name(obj)
    obj == nil ?  missing_name : @name = obj
  end

  def missing_name
    raise ArgumentError, 'A name is required'
  end

  def missing_account
    raise RuntimeError, 'No account present'
  end

  def missing_atm
    raise RuntimeError, 'An ATM is required'
  end

  def out_of_cash
    raise RuntimeError, 'Not enough cash'
  end
end
