require 'seat'

describe Seat do

  let(:seat) {Seat.new}

  it 'should be available when initialized' do
    expect(seat).to be_available
  end

  it 'should be able to be booked' do
    seat.book!
    expect(seat).to_not be_available
  end

end

# https://s3.amazonaws.com/uploads.hipchat.com/119067/1032565/OAjtKu7JNdJotNH/sample_booking_requests