RSpec.describe Station, type: :model do
  it 'Station has attributes' do
    station = create(:station)

    expect(station).to respond_to(:station_name)
  end
end
