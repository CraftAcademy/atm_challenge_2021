class Account
  STANDARD_VALIDITY_YRS = 5
  ACCOUNT_BALANCE_WHEN_CREATED = 1000
  attr_accessor :account_status, :owner, :pin_code, :balance, :exp_date

  def initialize(attrs = {})
    @account_status = :active
    set_owner(attrs[:owner])
    @pin_code = set_pin
    @balance = ACCOUNT_BALANCE_WHEN_CREATED
    @exp_date = set_expire_date
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
