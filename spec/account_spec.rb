require './lib/account.rb'
require 'date'
describe Account do
    it 'has a four digit PIN code' do
        expect(subject.pin_code.to_s.length).to eq 4
    end
    it 'is expected to have an expiry date on initialize' do
        expected_date = Date.today.next_year(5).strftime("%m/%y")
        expect(subject.exp_date).to eq expected_date
    end
    it 'is expected to have :active status on initialize' do
        expect(subject.account_status).to eq :active
    end
    it 'deactivates account using the instance method' do  #otherwise all accounts would be deactivated
        subject.deactivate
        expect(subject.account_status).to eq :deactivated
    end
    
end