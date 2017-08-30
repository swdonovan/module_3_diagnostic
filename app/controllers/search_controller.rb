class SearchController < ApplicationController
  def index
    response = StationData.new(params[:q])
    stations = response.station_search
    binding.pry
  end
end
