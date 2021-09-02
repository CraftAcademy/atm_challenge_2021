require_relative '../lib/account.rb'

describe Account do
  it 'is expected to have an expiry date on initialization' do
    expected_date = Date.today.next_year(5).strftime("%m/%y")
    expect(subject.set_expire_date).to eq expected_date
  end

  it 'is expected to have :active status on initialize' do
    expect(subject.account_status).to eq :active
  end

  it 'deactivates account using the class method' do
    Account.deactivate(subject)
    expect(subject.account_status).to eq :deactivated
  end

end

