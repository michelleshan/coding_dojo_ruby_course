require 'rails_helper'
RSpec.describe User, type: :model do
  context "valid user information" do
    it "should not save if username field is blank" do
      expect(build(:user, username: "")).to be_invalid
    end
    it "should not save if username already exists" do
      create(:user)
      expect(build(:user)).to be_invalid
    end
    it "should not save if username is not at least 5 characters" do
      expect(build(:user, username: "mish")).to be_invalid
    end
  end
end
