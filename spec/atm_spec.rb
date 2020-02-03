require './lib/atm.rb'
describe Atm do
  let(:account) { instance_double('Account') }

  before do
    allow(account).to receive(:balance).and_return(100)
    allow(account).to receive(:balance=)
  end

  it 'has 1000$ on initialize' do
    expect(subject.funds).to eq 1000
  end
  
  it 'funds are reduced at withdraw' do
    subject.withdraw(50, account)
    expect(subject.funds).to eq 950
  end
  
  it 'allow whitdraw if account has enough balance.' do
    expected_output = { status: true, message: 'success', date: '2020', amount: 45 }
    expect(subject.withdraw(45, account)).to eq expected_output
  end

  def withdraw(amount, account)
    case 
    when amount > account.balance
      return
    else
      @funds -= amount
      account.balance = account.balance - amount
      { status: true, message: 'success', date: '2020', amount: amount }
    end
  end
end
