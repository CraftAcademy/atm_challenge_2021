require_relative 'account'

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

  private

  def set_name(obj)
    obj.nil? ? missing_name : @name = obj
  end

  def missing_name
    raise 'A name is required'
  end
end
