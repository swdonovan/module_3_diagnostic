class StationData
  attr_reader :zipcode,
              :quantity,
              :key

  def initialize(zipcode, quantity = 10)
    @zipcode = zipcode
    @quantity = quantity
  end

  def station_search
    response = Faraday.new(:url =>
            "/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV[NREL_KEY]}&location=#{zipcode}&fuel_type=ELEC&LPG&limit=#{quantity}")
  end
end
