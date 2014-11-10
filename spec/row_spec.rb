require 'row'
require 'seat'

describe Row do

  let(:row)  {Row.new}
  let(:seat) {row.seats.first}
  # let(:booked_seat) {double :seat, :available? => false}

  it 'should have seats' do
    expect(row).to have_seats
  end

  it 'should have 50 seats' do
    expect(row.seat_count).to eq (50)
  end

  it 'allows available seats to be booked' do
    # allow(seat).to receive(:book!).and_return(self)
    row.book_seats(seat)
    expect(seat).to_not be_available
    expect(row.available_seats).to eq (49)
  end

end