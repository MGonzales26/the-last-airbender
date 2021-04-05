require 'rails_helper'

RSpec.describe "Nation Search Results" do
  describe "As a user" do
    it 'returns the count of memebers, first 25, and their name and photo, allies, enemies, and affiliations' do
      visit root_path

      select "Fire Nation", :from => :nation
      click_on("Search For Members")

      expect(current_path).to eq(search_path)

      expect(page).to have_content("Number of Members in this Nation: 100")
      #test to show only first 25 results
      expect(page).to have_content("Name: ")
      expect(page).to have_content("Allies: ")
      expect(page).to have_content("Enemies: ")
      expect(page).to have_content("Affiliations: ")
    end
  end
end