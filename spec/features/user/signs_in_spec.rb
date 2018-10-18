require "rails_helper"

RSpec.describe "User signs in", type: :feature do
  let!(:user) { create(:user) }

  context "with valid account" do
    it "shows you the dashboard" do
      visit new_user_session_path

      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_on "Log in"

      expect(page).to have_content "Welcome"
    end
  end

  context "with invalid account" do
    it "shows you an error message" do
      visit new_user_session_path

      fill_in "Email", with: "invalidemail@invalid.com"
      fill_in "Password", with: "password"
      click_on "Log in"

      expect(page).to have_content "Invalid Email or password."
    end
  end

end
