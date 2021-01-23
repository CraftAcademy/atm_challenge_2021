require 'date'
require './lib/person.rb'
require './lib/atm.rb'

describe Person do

    subject { described_class.new(name: 'Noel') }

    it 'takes an argument of name and adds it as attribute on initialize' do
        expect(subject.name).not_to be nil
    end

    it 'raises an error if no name is given' do
        expect { described_class.new }.to raise_error 'A name is required'
    end

    it 'is expected to have a :cash attribute with the value of 0 on initialize' do
        expect(subject.cash).to eq 0
    end

    it 'is expected to have an :account attribute with no value' do
        expect(subject.account).to be nil
    end

    describe 'can create an Account' do
        before {subject.open_account }
        
        it 'that is an instance of the Account class' do
            expect(subject.account).to be_an_instance_of Account
        end

        it 'with himself as the owner lol' do
            expect(subject.account.owner).to be subject.name
        end

    end

    describe 'can manage funds if an account been created' do
        
        it 'can deposit funds' do
            subject.open_account
            subject.cash = 100
            expect(subject.deposit(100)).to be_truthy
        end

        it 'but raises error if theres not enough cash to deposit' do
            subject.open_account
            expect { subject.deposit(100) }.to raise_error 'Not enough cash'
        end

        it 'but raises error if no account has been created on deposit' do
            subject.cash = 100
            expect { subject.deposit(100) }.to raise_error 'No account present'
        end

        it 'and adds funds to account balance - and deducts from cash holding' do
            subject.open_account
            subject.cash = 100
            subject.deposit(100)
            expect(subject.cash).to be 0
            expect(subject.account.balance).to be 200
        end
    end

    describe 'can withdraw funds from Atm' do
        let(:atm) { Atm.new }
        before do
            subject.open_account
        end

        it 'using the withdraw method' do
            amount = 100
            withdraw_cmd = lambda { subject.withdraw(amount: amount, pin_code: subject.account.pin_code, account: subject.account, atm: atm) }
            expect(withdraw_cmd.call).to be_truthy
        end

        it 'cannot withdraw if no atm is present' do
            amount = 100
            withdraw_cmd = lambda { subject.withdraw(amount: amount, pin_code: subject.account.pin_code, account: subject.account) }
            expect { withdraw_cmd.call }.to raise_error 'No ATM present'
        end

        it 'adds funds to cash holdings - and deducts from account balance' do
            subject.cash = 100
            subject.deposit(100)
            subject.withdraw(amount: 100, pin_code: subject.account.pin_code, account: subject.account, atm: atm)
            expect(subject.cash).to eq 100
            expect(subject.account.balance).to eq 100
        end

    end

end