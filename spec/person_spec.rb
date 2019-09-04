require './lib/person.rb'
require './lib/atm.rb'

describe Person do
  subject { described_class.new( name: 'Hans') }

  it 'is expected to have a :name on initialize' do
    expect(subject.name).not_to be nil
  end

  it 'is expected to raise an error if no name is set' do
    expect(subject.name).not_to be nil
  end

  it 'is expected to have a :cash attribute with the value of 0 on initialize' do
    expect(subject.cash).to eq 0
  end
  

end