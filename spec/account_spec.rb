require_relative '../lib/account.rb'

describe Account do
  it 'is expected to have an expiry date on initialization' do
    expected_date = Date.today.next_year(5).strftime("%m/%y")
    expect(subject.set_expire_date).to eq expected_date
  end
end

