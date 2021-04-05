class SearchFacade
  
  def self.find_nations_members(nation)
    members = SearchService.find_members_by_nation(nation)

    members.map do |member|
      Member.new(member)
    end
  end
end