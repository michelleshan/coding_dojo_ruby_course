require 'rails_helper'
RSpec.describe Message, type: :model do
  context "message field" do
    it "should not save if message field is blank" do
      expect(build(:message, message: "", user: build(:user))).to be_invalid
    end
    it "should not save if message field is not at least 10 characters" do
      expect(build(:message, message: "123456789", user: build(:user))).to be_invalid
    end
  end
  it "should not save if user reference is blank" do
    expect(build(:message)).to be_invalid
  end
end
