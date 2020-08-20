require 'rails_helper'
feature "guest user creates an account" do
    before(:each) do
        visit "/users/new"
    end
    scenario "successfully creates a new user account" do
        fill_in "user_username", with: "meeshy999"
        click_button "Sign In"
        expect(page).to have_content "Welcome meeshy999"
        expect(current_path).to eq(messages_path)
    end
    scenario "username is blank" do
        fill_in "user_username", with: ""
        click_button "Sign In"
        expect(page).to have_content "Username is required"
        expect(current_path).to eq(new_user_path)
    end
    scenario "username is too short" do
        fill_in "user_username", with: "meesh"
        click_button "Sign In"
        expect(page).to have_content "Username must be greater than 5 characters"
        expect(current_path).to eq(new_user_path)
    end
    scenario "username already exists" do
        fill_in "user_username", with: "Joey123"
        click_bu  tton "Sign In"
        expect(page).to have_content "Username already exists"
        expect(current_path).to eq(new_user_path)
    end
end

feature "guest logs in" do
    scenario "successfully logs in" do
        fill_in "user_username", with: "meeshy999"
        click_button "Sign In"
        expect(page).to have_content "Welcome meeshy999"
        expect(current_path).to eq(messages_path)
    end
end