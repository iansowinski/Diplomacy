require "classes.rb"

describe Country  do
  let :country do
    Country.new("pol", 
                "Poland", 
                "land", 
                ["ger", "rus", "cze", "slo", "lit", "bel", "ukr"], 
                "",
                "")
  end
  describe "instance variables" do
    it "should be equal as in :country initialize" do
      country.name.should == "Poland"
      country.type.should == "land"
      country.neighbours.should == ["ger", "rus", "cze", "slo", "lit", "bel", "ukr"]
      country.army_type.should == ""
      country.belongs_to.should == ""
    end
  end
  describe "classes.id" do 
    it "should be a symbol" do
      country.id.class.should == Symbol
    end
  end
end