require 'docking_station'

describe DockingStation do 
  it { is_expected.to respond_to :release_bike }

  it 'releases working bike' do
    bike = subject.release_bike
    expect(bike).to be_working

  end
   
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
   it 'returns docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
   end


end
