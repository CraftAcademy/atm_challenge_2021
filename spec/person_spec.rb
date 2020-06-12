require './lib/person.rb'
require './lib/atm.rb'
require './lib/account'
require 'date'

describe Person do
    subject { described_class.new({name: 'Thomas'})}

    it 'is expected to have a name on initialize' do
        expect(subject.name).not_to be nil
    end

    it 'is expected to raise an error if no name is set' do
        expect { described_class.new }.to raise_error 'A name is required'
    end

    it 'is expected to have a cash attribute with the value 0 on initialize' do
        expect(subject.cash).to eq 0
    end

    it 'is expected to have an account attribute' do
        expect(subject.account).to be nil
    end

    describe 'can create an account' do
        before {subject.create_account}
        it 'of account class' do
            expect(subject.account).to be_an_instance_of Account
        end

        it 'with himself as an owner' do
            expect(subject.account.owner).to be subject
        end
    end

    # describe 'can manage funds if an account has been created' do

end