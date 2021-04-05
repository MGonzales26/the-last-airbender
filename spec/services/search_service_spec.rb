require 'rails_helper'

RSpec.describe "search service" do
  describe "happy path" do
    it "returns the needed data to the facade" do
      nation = "Fire Nation"

      result = SearchService.find_members_by_nation(nation)

      expect(result).to be_an(Array)
      expect(result[0]).to be_a(Hash)
      expect(result[0]).to have_key(:allies)
      expect(result[0]).to have_key(:enemies)
      expect(result[0]).to have_key(:name)
      expect(result[0]).to have_key(:affiliation)
      
    end
  end
end