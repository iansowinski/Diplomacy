require "classes.rb"
RSpec::Expectations.configuration.on_potential_false_positives = :nothing
describe Region  do
  describe "new" do
    id = :pol
    name = "Poland"
    type = :land
    neighbours = [:ger, :rus, :cze, :slo, :lit, :bel, :ukr]
    army = nil
    belongs = nil
    supply = true
    context "given wrong id" do
      it "should raise error" do
        wrong_items = ["pols", 1, nil, true, :adse, :ad, [], {}, "pol"]
        wrong_items.each do |wrong_item|
          expect{Region.new(wrong_item, name, type, neighbours, supply, army, belongs)}.to raise_error(ArgumentError)
        end
      end
    end
    context "given good id" do
      it "should not raise error" do
        good_items = [:pol]
        good_items.each do |good_item|
          expect{Region.new(good_item, name, type, neighbours, supply, army, belongs)}.to_not raise_error
        end
      end
    end
    context "given wrong name" do
      it "should raise error" do
        wrong_items = [1, nil, true, :pol, "", [], {}]
        wrong_items.each do |wrong_item|
          expect{Region.new(id, wrong_item, type, neighbours, supply, army, belongs)}.to raise_error(ArgumentError)
        end
      end
    end
    context "given good name" do
      it "should not raise error" do
        good_items = ["Poland"]
        good_items.each do |good_item|
          expect{Region.new(id, good_item, type, neighbours, supply, army, belongs)}.to_not raise_error
        end
      end
    end
    context "given wrong type" do
      it "should raise error" do
        wrong_items = ["pols", 1, nil, true, "dasdasd", :pol, [], {}]
        wrong_items.each do |wrong_item|
          expect{Region.new(id, name, wrong_item, neighbours, supply, army, belongs)}.to raise_error(ArgumentError)
        end
      end
    end
    context "given good type" do
      it "should not raise error" do
        good_items = [:land, :water, :land_with_water]
        good_items.each do |good_item|
          expect{Region.new(id, name, good_item, neighbours, supply, army, belongs)}.to_not raise_error
        end
      end
    end
    context "given wrong neighbours" do
      it "should raise error" do
        wrong_items = ["pols", 1, nil, true, "dasdasd", :pol, [],{},["pol", "fra"], [1,2,3]]
        wrong_items.each do |wrong_item|
          expect{Region.new(id, name, type, wrong_item, supply, army, belongs)}.to raise_error(ArgumentError)
        end
      end
    end
    context "given good neighbours" do
      it "should not raise error" do
        good_items = [[:pol, :ger, :rus]]
        good_items.each do |good_item|
          expect{Region.new(id, name, type, good_item, supply, army, belongs)}.to_not raise_error
        end
      end
    end
    context "given wrong army_type" do
      it "should raise error" do
        wrong_items = ["pols", 1, "dasdasd", :pol, [],{},["pol", "fra"], [1,2,3]]
        wrong_items.each do |wrong_item|
          expect{Region.new(id, name, type, neighbours, supply, wrong_item, belongs)}.to raise_error(ArgumentError)
        end
      end
    end
    context "given good army_type" do
      it "should not raise error" do
        good_items = [:army, :fleet, nil]
        good_items.each do |good_item|
          expect{Region.new(id, name, type, neighbours, supply, good_item, belongs)}.to_not raise_error
        end
      end
    end
    context "given wrong belongs_to" do
      it "should raise error" do
        wrong_items = ["pols", 1, true, "dasdasd", :ad, :pols, :pol, [],{},["pol", "fra"]]
        wrong_items.each do |wrong_item|
          expect{Region.new(id, name, type, neighbours, supply, army, wrong_item)}.to raise_error
        end
      end
    end
    context "given good belongs_to" do
      it "should not raise error" do
        good_items = [:germany, :russia, :austria, :turkey, :england, :france, :italy, nil]
        good_items.each do |good_item|
          expect{Region.new(id, name, type, neighbours, supply, army, good_item)}.to_not raise_error
        end
      end
    end
    context "given wrong supply_center" do
      it "should raise error" do
        wrong_items = ["pols", 1, nil, "dasdasd", :pol, [],{},["pol", "fra"], [1,2,3]]
        wrong_items.each do |wrong_item|
          expect{Region.new(id, name, type, neighbours, wrong_item, army, belongs)}.to raise_error(ArgumentError)
        end
      end
    end
    context "given good supply_center" do
      it "should not raise error" do
        good_items = [true, false]
        good_items.each do |good_item|
          expect{Region.new(id, name, type, neighbours, good_item, army, belongs)}.to_not raise_error
        end
      end
    end
  end
  let :region do
    Region.new(:pol, 
                "Poland", 
                :land, 
                [:ger, :rus, :cze, :slo, :lit, :bel, :ukr], 
                true,
                :army,
                :germany)
  end
  describe "region.id" do 
    it "should be a symbol" do
      expect(region.id.class).to eql(Symbol)
    end
  end
  describe "region.name" do
    it "should be equal to 'Poland'" do
      expect(region.name).to eql("Poland")
    end
  end
  describe "region.type" do
    it "should be equal to :land" do
      expect(region.type).to eql(:land)
    end
  end
  describe "region.neigbours" do
    it "all should be symbols" do
      expect(region.neighbours).to eql([:ger, :rus, :cze, :slo, :lit, :bel, :ukr])
    end
  end
  describe "region.army_type" do 
    it "should be a nil" do
      expect(region.army_type).to eql(:army)
    end
  end
  describe "region.belongs_to" do
    it "should be nil" do
      expect(region.belongs_to).to eql(:germany)
    end
  end
  describe "immutable instance variables" do
    it "should raise error if assigned" do
      expect{ region.name = "test"}.to raise_error(NoMethodError)
      expect{ region.type = "test"}.to raise_error(NoMethodError)
      expect{ region.neighbours = "test"}.to raise_error(NoMethodError)
      expect{ region.id = "test"}.to raise_error(NoMethodError)
    end
  end
  describe "mutable instance variables" do
    it "should assign properly" do
      region.army_type = :army
      region.belongs_to = :pol
      expect(region.army_type).to eql(:army)
      expect(region.belongs_to).to eql(:pol)
    end
    context "assigned strings, numbers or booleans" do
      it "should raise errors" do
      end
    end
  end
end
# describe Player do
#   describe "new" do
#     possible_countries = :germany, :england, :russia, :austria, :italy, :turkey, :france
#     player_names = "Jan", "Maciej", "Mikołaj", "Michał", "Kuba", "Bartek", "Michał"
#     end
# end
