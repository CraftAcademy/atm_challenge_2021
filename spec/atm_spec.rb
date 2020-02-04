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

    it 'allow withdraw if the account has enough balance' do
        expected_output = { status: true, message: 'Successful', date: Time.now.strftime("%Y-%m-%d"), amount: 100 }
        expect(subject.withdraw(100, account)).to eq expected_output
    end

    it 'rejects withdraw if the account has insufficient funds' do
        expected_output = { status: false, message: 'Unsuccessful because of insufficient funds', date: Time.now.strftime("%Y-%m-%d") }
        expect(subject.withdraw(105, account)).to eq expected_output   
    end
    
    it 'reject withdraw if ATM has insufficient funds' do
        subject.funds = 50
        expected_output = { status: false, message: 'Unsuccessful because insufficient funds in ATM', date: Time.now.strftime("%Y-%m-%d") }
        expect(subject.withdraw(100, account)).to eq expected_output
    end

end