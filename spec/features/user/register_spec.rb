require "rails_helper"

RSpec.describe "User registers", type: :feature do
  let!(:user) { build(:user) }

  context "with non-matching passwords" do
    it "shows you an error message" do
      visit new_user_registration_path

      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      fill_in "Password confirmation", with: "somethingelse"
      click_on "Sign up"

      expect(page).to have_content "Password confirmation doesn't match Password"
    end
  end

  context "with password less than 6 characters" do
    it "shows you an error message" do
      visit new_user_registration_path

      fill_in "Email", with: user.email
      fill_in "Password", with: "asdf"
      fill_in "Password confirmation", with: "asdf"
      click_on "Sign up"

      expect(page).to have_content "Password is too short (minimum is 6 characters)"
    end
  end

  context "with valid account" do
    it "shows you the member dashboard" do
      visit new_user_registration_path

      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      fill_in "Password confirmation", with: user.password
      click_on "Sign up"

      expect(page).to have_content "Dashboard Page"
    end
  end

end
