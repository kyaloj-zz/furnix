require 'spec_helper'
require 'rails_helper'

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

  it "returns a sorted array of results that match" do
  	@table = FactoryGirl.create(:furniture, title: "table")
    @chair = FactoryGirl.create(:furniture, title: "chair")
    @couch = FactoryGirl.create(:furniture, title: "couch")
    Furniture.by_letter("c").should == [@chair, @couch]
  end
end
