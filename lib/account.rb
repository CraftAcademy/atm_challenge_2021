class Account
  STANDARD_VALIDITY_YRS = 5
  attr_accessor :account_status

  def initialize
    @account_status = :active
  end

  def set_expire_date
    Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y')
    
  end

  private

  def self.deactivate(account)
   account.account_status = :deactivated 
  end


end