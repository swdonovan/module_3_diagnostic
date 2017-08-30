require 'net/http'

class StationData
  attr_reader :zipcode,
              :quantity,
              :key

  def initialize(zipcode, quantity = 10)
    @zipcode = zipcode
    @quantity = quantity
  end

  def station_search
    response = get_request("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['NREL_KEY']}&location=#{zipcode}&fuel_type=ELEC%2CLPG&limit=#{quantity}")
    stations = parse_response(response)
            binding.pry
    stations.map { |station| Stations.new(station) }
  end
end
