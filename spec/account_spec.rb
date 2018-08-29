require './lib/account.rb'
require './lib/atm.rb'
require 'date'

describe Account do
    let(:person)  { instance_double('Person', name: "Miriam") }
    subject { described_class.new ({owner: person}) }

    it "is expected to have an owner" do
        expect(subject.owner).to eq person
    end

    it "is expected to raise error if no owner is set" do
        expect { described_class.new }.to raise_error "An account owner is required"
    end


end

