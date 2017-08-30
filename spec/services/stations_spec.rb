RSpec.describe Stations, type: :model do
  it 'Station has attributes' do
    station = Stations.new({station_name: "Barney's Door"})

    expect(station).to respond_to(:station_name)
  end
end
