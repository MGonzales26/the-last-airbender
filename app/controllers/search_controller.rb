class SearchController < ApplicationController

  def index
    @members = SearchFacade.find_nations_members(params[:nation]) 
    # require 'pry'; binding.pry
  end
end