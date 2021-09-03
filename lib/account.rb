class Account
  STANDARD_VALIDITY_YRS = 5
  attr_accessor :account_status, :owner, :pin_code, :balance, :exp_date

  def initialize(attrs = {})
    @account_status = :active
    set_owner(attrs[:owner])
    @pin_code = set_pin
  end

  def set_expire_date
    Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y')
  end

  private

  def self.deactivate(account)
    account.account_status = :deactivated
  end

  def set_owner(obj)
    obj.nil? ? missing_owner : @owner = obj
  end

  def missing_owner
    raise 'An Account owner is required'
  end

  def set_pin
    rand(1000..9999)
  end
end
