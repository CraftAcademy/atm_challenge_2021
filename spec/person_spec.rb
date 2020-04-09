require './lib/person.rb'
require './lib/atm.rb'

describe Person do
    
    subject { described_class.new(name: 'Thomas', cash: 0, account: :active) }

    it 'is expected to have a :name on initialize' do
        expect(subject.name).not_to be nil
    end
    
    it ' is expected to raise an error if no name is set' do
        expect { described_class.new }.to raise_error 'A name is required'
    end
    it 'is expected to have a :cash attribute with the value of 0 on initialize' do
        expect(subject.cash).to eq 0
    end
    it 'is expected to have a :account attribute' do
        expect(subject.account).not_to be nil
    end
    it ' is expected to raise an error if no account status is set' do
        expect { described_class.new(name: 'Thomas', cash: 0) }.to raise_error 'Missing account status'
    end
    
end
