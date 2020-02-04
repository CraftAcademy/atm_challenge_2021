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
        subject.withdraw 50
        expect(subject.funds).to eq 950
    end

    it 'respons message if the withdrawl was successful' do
        subject.withdraw 900
        expect(subject.funds).to be >= 0
        expected_output = { status: true, message: 'Successful', date: Time.now.strftime("%Y-%m-%d"), amount: 900 }
        expect(subject.withdraw(900)).to eq expected_output
    end

end