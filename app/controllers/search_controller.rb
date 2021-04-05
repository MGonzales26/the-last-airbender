class SearchController < ApplicationController

  def index
    conn = Faraday.new('http://last-airbender-api.herokuapp.com')
    
    response = conn.get('/api/v1/characters') do |f|
      f.params['affiliation'] = params[:nation] 
    end

    json = JSON.parse(response.body, symbolize_names: true) 
    # require 'pry'; binding.pry
  end
end