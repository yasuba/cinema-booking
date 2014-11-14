require 'cinema'

describe Cinema do

  let (:cinema) {Cinema.new}
  let (:row) {Row.new}

  it 'should have 100 rows' do
    expect(cinema.rows.count).to eq 100
  end

  it 'should accept bookings' do
    cinema.book_seats(0,0)
    expect(cinema.rows[0].seats[0]).to_not be_available
  end

end