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
    
end