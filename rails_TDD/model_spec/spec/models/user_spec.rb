require 'rails_helper'

RSpec.describe User do
  context "with valid attributes" do
    it "should save" do
      user = User.new(
        first_name: "Shane",
        last_name: "Chang",
        email: "schang@codingdojo.com"
      )
      expect(user).to be_valid
    end
  end

  context "with invalid attributes" do
    it "should not save if first_name field is blank" do
      user = User.new(
        first_name: "",
        last_name: "Chang",
        email: "schang@codingodjo.com"
      )
      expect(user).to be_invalid
    end
    it "should not save if last_name field is blank" do
      user = User.new(
        first_name: "Shane",
        last_name: "",
        email: "schang@codingodjo.com"
      )
      expect(user).to be_invalid
    end
    it "should not save if email already exists" do
      user = User.new(
        first_name: "Shane",
        last_name: "Chang",
        email: ""
      )
      expect(user).to be_invalid
    end
    it "should not save if invalid email format" do
      user = User.new(
        first_name: "Shane",
        last_name: "Chang",
        email: "schangcodingdojo.com"
      )
      expect(user).to be_invalid
    end
  end
end
