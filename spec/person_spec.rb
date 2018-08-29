require './lib/person.rb'
require './lib/atm.rb'

describe Person do

    subject { described_class.new(name: 'Daniel') }

    it 'is expected to have a :name on initialize' do
        expect(subject.name).not_to be nil
    end

    it 'is expected to have a :cash attribute with value of 0 on initialize' do
        expect(subject.cash).to eq 0
    end

    it 'is expected to have an :account attribute' do
        expect(subject.account).to eq nil
    end
end