require './lib/account.rb'

describe Account do
    it 'has a four digit PIN code' do
        expect(subject.pin_code.to_s.length).to eq 4
    end
end