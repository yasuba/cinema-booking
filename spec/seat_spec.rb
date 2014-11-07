require 'seat'

describe Seat do

  let(:seat) {Seat.new}

  it 'is available when initialized' do
    expect(seat).to be_available
  end

  it 'can be booked' do
    seat.book!
    expect(seat).to_not be_available
  end

end