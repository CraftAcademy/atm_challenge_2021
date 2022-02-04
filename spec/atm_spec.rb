require './lib/atm.rb'


describe Atm do
    
    subject { Atm.new }
    
    let(:account) { instance_double('Account', pin_code: '1234', exp_date: '04/2025', account_status: :active, balance: 1000) }
    
    before do
        allow(account).to receive(:balance).and_return(100)
        allow(account).to receive(:balance=)
    end

    it 'is expected to hold $1000 when instantiated' do
        expect(subject.funds).to eq 1000
    end

    it 'is expected to reduce funds on withdraw' do
        subject.withdraw(50, '1234', account)
        expect(subject.funds).to eq 950
    end

    # or using a slightly more precise matcher:

    it 'is expected to reduce funds on withdraw' do
        expect { subject.withdraw(50, '1234', account) }.to change { subject.funds }.from(1000).to(950)
    end


    it 'is expected to allow withdraw if account has enough balance' do
        expected_output = {
            status: true,
            message: 'success',
            date: Date.today,
            amount: 45,
            account_status: :active,
            bills: [20, 20, 5]
        }
        expect(subject.withdraw(45, '1234', account)).to eq expected_output
    end

    it 'is expected to reject an withdrawal if account has insufficient funds' do
        expected_output = {
            status: false,
            message: 'insufficient funds',
            date: Date.today
        }
        expect(subject.withdraw(105, '1234', account)).to eq expected_output
    end

    it 'reject withdraw if ATM has insufficient funds' do
        subject.funds = 50
        expected_output = { status: false, message: 'insufficient funds in ATM', date: Date.today }
        expect(subject.withdraw(100, '1234', account)).to eq expected_output
    end

    it 'reject withdraw if the pin is wrong' do
        expected_output = { status: false, message: 'wrong pin', date: Date.today }
        expect(subject.withdraw(50, 9999, account)).to eq expected_output
    end

    it 'reject withdraw if the card is expired' do
        allow(account).to receive(:exp_date).and_return('12/15')
        expected_output = { status: false, message: 'card expired', date: Date.today }
        expect(subject.withdraw(6, '1234', account)).to eq expected_output
    end

    it 'rejects withdraw if account status is not active' do
        allow(account).to receive(:account_status).and_return(:deacivated)
        expected_output = { status: false, message: 'account not active', date: Date.today }
        expect(subject.withdraw(6, '1234', account)).to eq expected_output
    end

end