require "rails_helper"

RSpec.describe "Page navigation from root", type: :feature do

  context "without logging in" do

    it "shows you the 'What is a Software Engineer' page" do
      visit root_path
      click_on "What is a Software Engineer"
      expect(page).to have_content "What is a Software Engineer?"
    end

    it "shows you the 'Day in the Life' page" do
      visit root_path
      click_on "Day in the Life"
      expect(page).to have_content "Day in the Life"
    end

    it "shows you the 'Career Paths' page" do
      visit root_path
      click_on "Career Paths"
      expect(page).to have_content "Career Paths"
    end

    it "shows you the 'Exams and Certification' page" do
      visit root_path
      click_on "Exams and Certification"
      expect(page).to have_content "Exams and Certification"
    end

    it "shows you the 'Books' page" do
      visit root_path
      click_on "Books"
      expect(page).to have_content "Books"
    end

    it "shows you the 'Software Engineer of the Future' page" do
      visit root_path
      click_on "Software Engineer of the Future"
      expect(page).to have_content "Software Engineer of the Future"
    end

    it "shows you the 'Code of Professional Conduct' page" do
      visit root_path
      click_on "Code of Professional Conduct"
      expect(page).to have_content "Code of Professional Conduct"
    end

    it "shows you the 'SE Coding Standards and Best Practices' page" do
      visit root_path
      click_on "SE Coding Standards and Best Practices"
      expect(page).to have_content "SE Coding Standards and Best Practices"
    end

    it "shows you the 'Employer Scoring' page" do
      visit root_path
      click_on "Employer Scoring"
      expect(page).to have_content "Employer Scoring"
    end

    it "shows you the 'Salaries and Demographics' page" do
      visit root_path
      click_on "Salaries and Demographics"
      expect(page).to have_content "Salaries and Demographics"
    end

    it "shows you the 'Podcasts' page" do
      visit root_path
      click_on "Podcasts"
      expect(page).to have_content "Podcasts"
    end
  end

end
