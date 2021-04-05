require 'rails_helper'

RSpec.describe "search facade" do
  describe "happy path" do
    it "provides a list of the nations members" do
      nation = "Fire Nation"

      result = SearchFacade.find_nations_members(nation)

      expect(result).to be_an(Array)
      expect(result.count).to eq(97)
      expect(result[0]).to be_a(Member)
      expect(result[96]).to be_a(Member)
    end
  end
end