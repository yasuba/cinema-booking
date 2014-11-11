require 'row'
require 'seat'

describe Row do

  let(:row)  {Row.new}
  let(:seat) {row.seats.first}

  it 'should have 50 seats when initialized' do
    expect(row.seat_count).to eq (50)
  end

  it 'allows available seats to be booked' do
    row.book_seats(seat)
    expect(seat).to_not be_available
    expect(row.available_seats).to eq (49)
  end

  it 'raises an error if an unavailable seat is booked' do
    booked_seat = row.seats[1].book!
    expect{row.book_seats(booked_seat)}.to raise_error
  end

end