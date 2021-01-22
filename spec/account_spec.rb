require './lib/account.rb'
require 'date'

describe Account do
    it 'check the lenght of the pin code' do  
        expect(subject.pin_code.to_s.length).to eq 4
    end








end