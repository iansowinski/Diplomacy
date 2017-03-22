require "classes.rb"
RSpec::Expectations.configuration.on_potential_false_positives = :nothing
describe Country  do
  describe "new" do
    id = :pol
    name = "Poland"
    type = :land
    neighbours = [:ger, :rus, :cze, :slo, :lit, :bel, :ukr]
    army = nil
    belongs = nil
    context "given wrong id" do
      it "should raise error" do
        wrong_items = ["pols", 1, nil, true, :adse, :ad, [], {}, "pol"]
        wrong_items.each do |wrong_item|
          expect{Country.new(wrong_item, name, type, neighbours, army, belongs)}.to raise_error(ArgumentError)
        end
      end
    end
    context "given good id" do
      it "should not raise error" do
        good_items = [:pol]
        good_items.each do |good_item|
          expect{Country.new(good_item, name, type, neighbours, army, belongs)}.to_not raise_error
        end
      end
    end
    context "given wrong name" do
      it "should raise error" do
        wrong_items = [1, nil, true, :pol, "", [], {}]
        wrong_items.each do |wrong_item|
          expect{Country.new(id, wrong_item, type, neighbours, army, belongs)}.to raise_error(ArgumentError)
        end
      end
    end
    context "given good name" do
      it "should not raise error" do
        good_items = ["Poland"]
        good_items.each do |good_item|
          expect{Country.new(id, good_item, type, neighbours, army, belongs)}.to_not raise_error
        end
      end
    end
    context "given wrong type" do
      it "should raise error" do
        wrong_items = ["pols", 1, nil, true, "dasdasd", :pol, [], {}]
        wrong_items.each do |wrong_item|
          expect{Country.new(id, name, wrong_item, neighbours, army, belongs)}.to raise_error(ArgumentError)
        end
      end
    end
    context "given good type" do
      it "should not raise error" do
        good_items = [:land, :water, :land_with_water]
        good_items.each do |good_item|
          expect{Country.new(id, name, good_item, neighbours, army, belongs)}.to_not raise_error
        end
      end
    end
    context "given wrong neighbours" do
      it "should raise error" do
        wrong_items = ["pols", 1, nil, true, "dasdasd", :pol, [],{},["pol", "fra"], [1,2,3]]
        wrong_items.each do |wrong_item|
          expect{Country.new(id, name, type, wrong_item, army, belongs)}.to raise_error(ArgumentError)
        end
      end
    end
    context "given good neighbours" do
      it "should not raise error" do
        good_items = [[:pol, :ger, :rus]]
        good_items.each do |good_item|
          expect{Country.new(id, name, type, good_item, army, belongs)}.to_not raise_error
        end
      end
    end
    context "given wrong army_type" do
      it "should raise error" do
        wrong_items = ["pols", 1, "dasdasd", :pol, [],{},["pol", "fra"], [1,2,3]]
        wrong_items.each do |wrong_item|
          expect{Country.new(id, name, type, neighbours, wrong_item, belongs)}.to raise_error(ArgumentError)
        end
      end
    end
    context "given good army_type" do
      it "should not raise error" do
        good_items = [:army, :fleet, nil]
        good_items.each do |good_item|
          expect{Country.new(id, name, type, neighbours, good_item, belongs)}.to_not raise_error
        end
      end
    end
    context "given wrong belongs_to" do
      it "should raise error" do
        wrong_items = ["pols", 1, true, "dasdasd", :ad, :pols, :pol, [],{},["pol", "fra"]]
        wrong_items.each do |wrong_item|
          expect{Country.new(id, name, type, neighbours, army, wrong_item)}.to raise_error
        end
      end
    end
    context "given good belongs_to" do
      it "should not raise error" do
        good_items = [:germany, :russia, :austria, :turkey, :england, :france, :italy, nil]
        good_items.each do |good_item|
          expect{Country.new(id, name, type, neighbours, army, good_item)}.to_not raise_error
        end
      end
    end
  end

  let :country do
    Country.new(:pol, 
                "Poland", 
                :land, 
                [:ger, :rus, :cze, :slo, :lit, :bel, :ukr], 
                :army,
                :germany)
  end
  describe "country.id" do 
    it "should be a symbol" do
      expect(country.id.class).to eql(Symbol)
    end
  end
  describe "country.name" do
    it "should be equal to 'Poland'" do
      expect(country.name).to eql("Poland")
    end
  end
  describe "country.type" do
    it "should be equal to :land" do
      expect(country.type).to eql(:land)
    end
  end
  describe "country.neigbours" do
    it "all should be symbols" do
      expect(country.neighbours).to eql([:ger, :rus, :cze, :slo, :lit, :bel, :ukr])
    end
  end
  describe "country.army_type" do 
    it "should be a nil" do
      expect(country.army_type).to eql(:army)
    end
  end
  describe "country.belongs_to" do
    it "should be nil" do
      expect(country.belongs_to).to eql(:germany)
    end
  end
  describe "immutable instance variables" do
    it "should raise error if assigned" do
      expect{ country.name = "test"}.to raise_error(NoMethodError)
      expect{ country.type = "test"}.to raise_error(NoMethodError)
      expect{ country.neighbours = "test"}.to raise_error(NoMethodError)
      expect{ country.id = "test"}.to raise_error(NoMethodError)
    end
  end
  describe "mutable instance variables" do
    it "should assign properly" do
      country.army_type = :army
      country.belongs_to = :pol
      expect(country.army_type).to eql(:army)
      expect(country.belongs_to).to eql(:pol)
    end
    context "assigned strings, numbers or booleans" do
      it "should raise errors" do
      end
    end
  end
end