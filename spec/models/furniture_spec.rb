#require 'spec_helper'

describe Furniture do
  it "has a valid factory" do
    FactoryGirl.create(:furniture).should be_valid
  end
  it "is invalid without a title" do
    FactoryGirl.build(:furniture, title: nil).should_not be_valid
  end
  it "is invalid without a description" do
    FactoryGirl.build(:furniture, description: nil).should_not be_valid
  end
  it "is invalid without a price" do
    FactoryGirl.build(:furniture, price: nil).should_not be_valid
  end
  it "is invalid without a category" do
    FactoryGirl.build(:furniture, category: nil).should_not be_valid
  end

  it "should allow title duplication" do
    FactoryGirl.create(:furniture, title: "MyText",
                description: "MyText",
                image: "MyText",
                price: 9.99,
                stock: 1,
                category: "MyText",
                delivery: "MyText",)
    FactoryGirl.build(:furniture, title: "MyText",
                description: "MyText",
                image: "MyText",
                price: 9.99,
                stock: 1,
                category: "MyText",
                delivery: "MyText",).should be_valid
  end

  it "returns a furniture's title as a string" do
	furniture = FactoryGirl.create(:furniture, description: "Mulla")
	furniture.description.should == "Mulla"
  end

  describe "filter title by letter" do      
    before :each do
      @table = FactoryGirl.create(:furniture, title: "table")
      @chair = FactoryGirl.create(:furniture, title: "chair")
      @couch = FactoryGirl.create(:furniture, title: "couch")
    end

    context "matching letters" do
      it "returns a sorted array of results that match" do
        Furniture.by_letter("c").should == [@chair, @couch]
      end
    end

    context "non-matching letters" do
      it "does not return furnitures that don't start with the provided letter" do
        Furniture.by_letter("c").should_not include @table
      end
    end
  end
end
