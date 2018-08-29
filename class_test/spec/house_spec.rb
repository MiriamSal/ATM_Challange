require './lib/house.rb'

describe House do

    it "can create an instance of a house" do
        house = House.new
        expect(house).to be_kind_of House
    end

    it "has color red on initialize" do
        expect(subject.color).to eql "red"
    end

end