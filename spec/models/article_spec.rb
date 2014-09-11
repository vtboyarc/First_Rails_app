require 'rails_helper'

RSpec.describe Article, :type => :model do
  it "returns first 30 characters of the articles body" do
    body_array.should eq(30)
end
it "returns short, medium, or long" do
  if array_length >= 300
    array_length.should eq("Long! (Want fries with that?)")
end
end