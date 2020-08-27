require './lib/person'
require './lib/atm'
require 'pry'

describe Person do

    let(:name) {instance_double('name', owner: 'Kalle')}
    subject { described_class.new(owner: 'Kalle') }

    
    subject{described_class.new(name: 'Kalle')}


    it 'is expected to have a :name on initialize' do
        expect(subject.name).not_to be nil
    end

    it 'is expected to raise an error if no name is set' do
         # binding.pry
        expect { described_class.new }.to raise_error 'A name is required'
    end


end


