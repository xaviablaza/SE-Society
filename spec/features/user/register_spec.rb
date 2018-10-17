require "rails_helper"

RSpec.describe "User registers", type: :feature do
  let!(:new_user) { build(:user) }
  let!(:taken_user) { create(:user) }

  context "with non-matching passwords" do
    it "shows you an error message" do
      visit new_user_registration_path

      fill_in "Email", with: new_user.email
      fill_in "Password", with: new_user.password
      fill_in "Password confirmation", with: "somethingelse"
      fill_in "First name", with: new_user.first_name
      fill_in "Last name", with: new_user.last_name
      fill_in "Username", with: new_user.username
      click_on "Sign up"

      expect(page).to have_content "Password confirmation doesn't match Password"
    end
  end

  context "with password less than 6 characters" do
    it "shows you an error message" do
      visit new_user_registration_path

      fill_in "Email", with: new_user.email
      fill_in "Password", with: "asdf"
      fill_in "Password confirmation", with: "asdf"
      fill_in "First name", with: new_user.first_name
      fill_in "Last name", with: new_user.last_name
      fill_in "Username", with: new_user.username
      click_on "Sign up"

      expect(page).to have_content "Password is too short (minimum is 6 characters)"
    end
  end

  context "with taken email" do
    it "shows you an error message" do
      visit new_user_registration_path

      fill_in "Email", with: taken_user.email
      fill_in "Password", with: new_user.password
      fill_in "Password confirmation", with: new_user.password_confirmation
      fill_in "First name", with: new_user.first_name
      fill_in "Last name", with: new_user.last_name
      fill_in "Username", with: new_user.username
      click_on "Sign up"

      expect(page).to have_content "Email has already been taken"
    end
  end

  context "with taken username" do
    it "shows you an error message" do
      visit new_user_registration_path

      fill_in "Email", with: new_user.email
      fill_in "Password", with: new_user.password
      fill_in "Password confirmation", with: new_user.password_confirmation
      fill_in "First name", with: new_user.first_name
      fill_in "Last name", with: new_user.last_name
      fill_in "Username", with: taken_user.username
      click_on "Sign up"

      expect(page).to have_content "Username has already been taken"
    end
  end

  context "with valid account" do
    it "shows you the member dashboard" do
      visit new_user_registration_path

      fill_in "Email", with: new_user.email
      fill_in "Password", with: new_user.password
      fill_in "Password confirmation", with: new_user.password
      fill_in "First name", with: new_user.first_name
      fill_in "Last name", with: new_user.last_name
      fill_in "Username", with: new_user.username
      click_on "Sign up"

      expect(page).to have_content "Dashboard Page"
    end
  end

  context "with taken username" do
    it "shows you an error message" do
      visit new_user_registration_path
      fill_in "Email", with: new_user.email
      fill_in "Password", with: new_user.password
      fill_in "Password confirmation", with: new_user.password_confirmation
      fill_in "First name", with: new_user.first_name
      fill_in "Last name", with: new_user.last_name
      fill_in "Username", with: taken_user.username
      click_on "Sign up"

      expect(page).to have_content "Username has already been taken"
    end
  end


end
