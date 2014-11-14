require 'cinema'

describe Cinema do

  let (:cinema) {Cinema.new}

  it 'should have 100 rows' do
    expect(cinema.rows.count).to eq 100
  end

  it 'should accept bookings' do
    cinema.book_seats(0,0,0)
    expect(cinema.rows[0].seats[0]).to_not be_available
  end

  it 'should accept multiple seat bookings' do
    cinema.book_seats(0,0,4)
    expect(cinema.rows[0].seats[0]).to_not be_available
    expect(cinema.rows[0].seats[1]).to_not be_available
    expect(cinema.rows[0].seats[2]).to_not be_available
    expect(cinema.rows[0].seats[3]).to_not be_available
    expect(cinema.rows[0].seats[4]).to_not be_available
  end

  # xit 'does not allow more than five seats to be booked at once' do
  #   expect{row.book_seats(0:0, 0:1, 0:2, 0:3, 0:4}.to raise_error
  # end

end