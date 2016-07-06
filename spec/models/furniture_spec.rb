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
end