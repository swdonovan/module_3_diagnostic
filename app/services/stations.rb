class Stations
  attr_reader :station_name,
              :distance

  def initialize(station)
    @station_name = station['station_name']
    @distance     = station['distance']
  end
end
