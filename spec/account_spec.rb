require_relative '../lib/account.rb'

describe Account do
  let(:person) { instance_double('Person', name: 'Thomas') }
  subject { described_class.new({owner: person}) }

  it 'is expected to have an expiry date on initialization' do
    expected_date = Date.today.next_year(5).strftime("%m/%y")
    expect(subject.set_expire_date).to eq expected_date
  end

  it 'is expected to have :active status on initialize' do
    expect(subject.account_status).to eq :active
  end

  it 'is expected to deactivate account using the class method' do
    Account.deactivate(subject)
    expect(subject.account_status).to eq :deactivated
  end

  it 'is expected to have an owner' do
    expect(subject.owner).to eq person
  end

  it 'is expected to raise error if no owner is set' do
    expect { described_class.new }.to raise_error 'An Account owner is required'
  end

  it 'is expected to have a pin of four digits' do
    expected_pin_length = 4
    expect(Math.log10(subject.pin_code).to_i + 1).to eq expected_pin_length
  end
end

