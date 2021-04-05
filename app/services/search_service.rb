class SearchService

  def self.find_members_by_nation(nation)
    conn = Faraday.new('http://last-airbender-api.herokuapp.com')
    
    response = conn.get('/api/v1/characters') do |f|
      f.params['affiliation'] = nation
      f.params['perPage'] = 200 
    end

    JSON.parse(response.body, symbolize_names: true)
  end
end