class SearchFacade
  
  def self.find_nations_members(nation)
    conn = Faraday.new('http://last-airbender-api.herokuapp.com')
    
    response = conn.get('/api/v1/characters') do |f|
      f.params['affiliation'] = nation
      f.params['perPage'] = 200 
    end

    members = JSON.parse(response.body, symbolize_names: true)

    members.map do |member|
      Member.new(member)
    end
  end
end