require './lib/person.rb'
require './lib/account.rb'
require './lib/atm.rb'
require 'date'

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

    describe "can create an Account" do
    
        before { subject.create_account }
        
        it "of Account class" do
            expect(subject.account).to be_an_instance_of Account 
        end

        it "with himself as an owner" do
            expect(subject.account.owner).to be subject
        end
    end
end
