require_relative '../lib/person'
require_relative '../lib/account'
require_relative '../lib/atm'

describe Person do
  subject { described_class.new(name: 'Thomas') }

  it 'is expected to have a :name on initialize' do
      expect(subject.name).not_to be nil
  end

  it 'is expected to raise an error if no name is set' do
      expect { described_class.new }.to raise_error 'A name is required'
  end

  it 'is expected to have a :cash attribute with the value of 0 on initialize' do
      expect(subject.cash).to eq 0
  end

  it 'is expected to have an :account attribute' do
      expect(subject.account).to be nil
  end

  describe 'can create an account' do
    before { subject.create_account }
    it 'is expected to be of Account class' do
        expect(subject.account).to be_an_instance_of Account
    end

    it 'is expected to have himself as owner' do
        expect(subject.account.owner).to be subject
    end
  end

  describe 'can manage funds if an account has been created' do
    let(:atm) { Atm.new }
    before { subject.create_account }
    it 'is expected to be able to deposit funds' do
        expect(subject.deposit(100)).to be_truthy
    end

    it 'is expected that when funds are added to the account balance - they are deducted from cash' do
      subject.cash = 100
      subject.deposit(100)
      expect(subject.account.balance).to be 1100
      expect(subject.cash).to be 0
    end

    it 'is expected to withdraw funds' do
      command = lambda { subject.withdraw(amount: 100, pin: subject.account.pin_code, account: subject.account, atm: atm) }
      expect(command.call).to be_truthy
    end

    it 'is expected to raise an error when no ATMis passed in to withdraw' do
      ommand = lambda { subject.withdraw(amount: 100, pin: subject.account.pin_code, account: subject.account) }
      expect { command.call }.to raise_error 'An ATM is required'
    end

    it 'is expected to that if funds are added to cash - deduct from account balance' do
      subject.cash = 100
      subject.deposit(100)
      subject.withdraw(amount: 100, pin: subject.account.pin_code, account: subject.account, atm: atm)
      expect(subject.account.balance).to be 0
      expect(subject.cash).to be 100
    end
    
  end

  describe 'can not manage funds if no account been created' do
    it 'is expected to be unable to deposit funds' do
        expect{subject.deposit(100)}.to raise_error(RuntimeError, 'No account present')      
    end
  end

end