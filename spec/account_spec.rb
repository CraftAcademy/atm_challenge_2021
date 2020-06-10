require './lib/account.rb'

describe Account do
   
    
    
    it 'check the length of a number' do
        @pin_code = rand(1000..9999)
        number_length = Math.log10(pin_code).to_i + 1
        expect(number_length).to eq 4

    end

end