require 'spec_helper'
require 'rails_helper'

describe Furniture do
  it "has a valid factory" do
  	FactoryGirl.create(:furniture).should be_valid
  end
  it "is invalid without a title"
  it "is invalid without a description"
  it "is invalid without a price"
  it "is invalid without a category"
end