require 'rails_helper'
feature "user creates a message" do
    scenario "successfully creates a new message" do
        visit "/users/new"
        fill_in "user_username", with: "meeshy999"
        click_button "Create User"
        expect(page).to have_content "Welcome meeshy999"
        expect(current_path).to eq(messages_path)
    end
    scenario "unsuccessfully creates a new message" do
        visit "/users/new"
    end
end