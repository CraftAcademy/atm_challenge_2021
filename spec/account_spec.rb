require './lib/account.rb'
require './lib/atm.rb'
require 'date'


describe account do



it 'check the lenght of a number' do
    number = 1234
    number_lenght = Math.log10(number).to_i + 1
    expect(number_lenght).to eq 4
end
