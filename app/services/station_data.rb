require 'net/http'

class StationData
  attr_reader :zipcode,
              :quantity,
              :key,
              :distance

  def initialize(zipcode, quantity = 10, distance = 6.0)
    @zipcode  = zipcode
    @quantity = quantity
    @distance = distance
  end

  def station_search
    uri = URI("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['NREL_KEY']}&location=#{zipcode}&fuel_type=ELEC%2CLPG&limit=#{quantity}&radius=#{distance}")
    response = Net::HTTP.get(uri)
    stations = JSON.parse(response)
    @stations = stations['fuel_stations'].map { |station| Stations.new(station) }
  end

  def stations_sorted_by_distance
    station_search.sort_by {|station| station.distance }
  end
end
