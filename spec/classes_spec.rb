require "classes.rb"

describe Country  do
  describe "new" do
    context "given wrong id" do
      it "should raise error" do
        wrong_items = ["pols", 1, nil, true]
        wrong_items.each do |wrong_item|
          expect{Country.new(wrong_item, "Poland", "land", ["ger", "rus", "cze", "slo", "lit", "bel", "ukr"], "","")}.to raise_error()
        end
      end
    end
    context "given good id" do
      it "should not raise error" do
        good_items = ["pol", :pol]
        good_items.each do |good_item|
          expect{Country.new(wrong_item, "Poland", "land", ["ger", "rus", "cze", "slo", "lit", "bel", "ukr"], "","")}.to_not raise_error()
        end
      end
    end
    context "given wrong type" do
      it "should raise error" do
        wrong_items = ["pols", 1, nil, true, "dasdasd", :pol]
        wrong_items.each do |wrong_item|
          expect{Country.new(wrong_item, "Poland", "land", ["ger", "rus", "cze", "slo", "lit", "bel", "ukr"], "","")}.to raise_error()
        end
      end
    end
    context "given good type" do
      it "should not raise error" do
        good_items = ["land", :land, "water", :water, "land_with_water", :land_with_water]
        good_items.each do |good_item|
          expect{Country.new(:pol, good_item, "land", ["ger", "rus", "cze", "slo", "lit", "bel", "ukr"], "","")}.to_not raise_error()
        end
      end
    end
  end
  let :country do
    Country.new("pol", 
                "Poland", 
                "land", 
                ["ger", "rus", "cze", "slo", "lit", "bel", "ukr"], 
                "",
                "")
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
  describe "country.id" do 
    it "should be a symbol" do
      expect(country.id.class).to eql(Symbol)
    end
  end
  describe "country.army_type" do 
    it "should be a nil" do
      expect(country.army_type).to eql(nil)
    end
  end
  describe "country.neigbours" do
    it "all should be symbols" do
      expect(country.neighbours).to eql([:ger, :rus, :cze, :slo, :lit, :bel, :ukr])
    end
  end
  describe "country.belongs_to" do
    it "should be nil" do
      expect(country.belongs_to).to eql(nil)
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