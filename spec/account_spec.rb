require './lib/account.rb'
require 'date'

describe Account do
    
    let(:person) { instance_double('Person', name: 'Noel') }
    subject { described_class.new({owner: person})}

    it 'is expected to have a owner' do
        expect(subject.owner).to eq person
    end

    it 'raises an error if no owner is given' do
        expect { described_class.new }.to raise_error 'Account doesnt have an owner'
    end

    it 'check the length of the pin code' do  
        expect(subject.pin_code.to_s.length).to eq 4
    end

    it 'is expected to have an expiry date on initialize' do
        expected_date = Date.today.next_year(5).strftime("%m/%y")
        expect(subject.exp_date).to eq expected_date
    end

    it 'is expected to have :active status on initialize' do
        expect(subject.account_status).to eq :active
    end

    it 'check to se if we can change the status' do
        subject.deactivate
        expect(subject.account_status).to eq :deactivated
    end
    
end