class Account
  require 'date'
  attr_accessor :pin_code, :exp_date, :account_status, :balance, :owner

  def initialize(attrs = {})
    @pin_code = generate_pin
    @exp_date = set_expire_date
    @account_status = :active
    @balance = 0
    set_owner(attrs[:owner])
  end

  STANDARD_VALIDITY_YRS = 5

  def set_expire_date
    Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
  end

  def deactivate
    @account_status = :deactivated
  end

  private

  def set_owner(obj)
    obj.nil? ? missing_owner : @owner = obj
  end

  def missing_owner
    raise 'An Account owner is required'
  end

  def generate_pin
    rand(1000..9999)
  end
end
