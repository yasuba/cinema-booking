require 'row'
require 'seat'

describe Row do

  let(:row)  {Row.new}
  let(:seat1) {row.seats[0]}
  let(:seat2) {row.seats[1]}
  let(:seat3) {row.seats[2]}
  let(:seat4) {row.seats[3]}
  let(:seat5) {row.seats[4]}
  let(:seat6) {row.seats[5]}

  it 'should have 50 seats when initialized' do
    expect(row.seat_count).to eq (50)
  end

  it 'allows available seats to be booked' do
    row.book_seats(seat1)
    expect(seat1).to_not be_available
    expect(row.available_seats).to eq (49)
  end

  it 'does not allow an unavailable seat to be booked' do
    booked_seat = row.seats[6].book!
    expect{row.book_seats(booked_seat)}.to raise_error
  end

  it 'does not allow more than five seats to be booked at once' do
    expect{row.book_seats(seat1, seat2, seat3, seat4, seat5, seat6)}.to raise_error
  end

end