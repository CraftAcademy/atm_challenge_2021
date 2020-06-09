require './lib/atm.rb'
require 'date'

describe Atm do
    let(:account) { instance_double('Account') }

    before do
        allow(account).to receive(:balance).and_return(100)
        allow(account).to receive(:balance=)
    end

    it 'allow withdraw if the account has enough balance.' do
        
        expected_output = { status: true, message: 'success', date: Date.today, amount: 45 }
        expect(subject.withdraw(45, account)).to eq expected_output
    end
end
