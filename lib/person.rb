require_relative 'account'
require_relative 'atm'

class Person
  STARTING_CASH = 0
  attr_accessor :name, :cash, :account

  def initialize(attrs = {})
    set_name(attrs[:name])
    @cash = Person::STARTING_CASH
    @account = nil
  end

  def create_account
    @account = Account.new(owner: self)
  end

  def deposit(amount)
    @account.nil? ? missing_account : deposit_funds(amount)
  end

  def withdraw(args = {})
    @account.nil? ? missing_account : withdraw_funds(args)
  end

  private

  def set_name(obj)
    obj.nil? ? missing_name : @name = obj
  end

  def missing_name
    raise 'A name is required'
  end

  def deposit_funds(amount)
    @cash -= amount
    @account.balance += amount
  end

  def withdraw_funds(args)
    args[:atm].nil? ? missing_atm : atm = args[:atm]
    account = @account
    amount = args[:amount]
    pin_code = args[:pin_code]
    response = atm.withdraw(amount, pin_code, account)
    response[:status] == true ? increase_cash(response) : response
  end

  def increase_cash(response)
    @cash += response[:amount]
  end

  def missing_atm
    raise ArgumentError, 'An ATM is required'
  end
end
