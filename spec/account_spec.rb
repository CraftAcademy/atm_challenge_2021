require './lib/account.rb'

describe Account do
let(:person) {instance_double('Person', name: 'Sara')}
subject { described_class.new({owner: person})}






    it 'check that pincode has 4 digits' do
        number = 1234
        number_length = Math.log10(number).to_i + 1
        expect(number_length).to eq 4
    end

    it 'is expected to have an expiry date on initialize' do
        expected_date = Date.today.next_year(5).strftime("%m/%y")
        expect(subject.exp_date).to eq expected_date
    end

    it 'is expected to have :active status on initialize' do
        expect(subject.account_status).to eq :active
    end

    it 'deactivates account using the class method' do
        Account.deactivate(subject)
        expect(subject.account_status).to eq :deactivated
    end

    it 'is expected to have an owner' do
        expect(subject.account_owner).to eq person
    end

    it 'is expected to throw error if no owner is set' do
        expect{described_class.new}.to raise_error 'an Account owner is required'
    end
end

