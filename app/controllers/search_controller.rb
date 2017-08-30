class SearchController < ApplicationController
  def index
    response = StationData.new(params[:q])
    @stations = response.stations_sorted_by_distance
  end
end
