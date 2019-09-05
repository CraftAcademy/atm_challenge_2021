require './lib/account.rb'
require './lib/atm'
require 'Date'

describe Account do
    let(:person) { instance_double('Person', name: 'Noel') }
    subject { described_class.new({owner: person}) }
    
    it 'is expected to have an owner' do #herreee
        expect(subject.owner).to eq person
    end

    it 'is expected to raise error if no owner is set' do
        expect { described_class.new }.to raise_error 'An Account owner is required'
    end

    it 'check the lenghth of a number' do 
        number = 1234
        number_length = Math.log10(number).to_i + 1
        expect(number_length).to eq 4
    end

    it 'is expected to have an expiry date on initialize' do
        expected_date = Date.today.next_year(5).strftime("%m/%Y")
        expect(subject.exp_date).to eq expected_date
    end

    it 'is expected to have :active status on initialize' do
        expect(subject.account_status).to eq :active
    end

    it 'deactivates account using the class method' do
        Account.deactivate(subject)
        expect(subject.account_status).to eq :deactivated
    end

end
