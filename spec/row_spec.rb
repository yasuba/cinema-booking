require 'row'

describe Row do

  let(:row)  {Row.new}
  let(:seat1) {row.seats[0]}
  let(:seat2) {row.seats[1]}
  let(:seat3) {row.seats[2]}
  let(:seat4) {row.seats[3]}
  let(:seat5) {row.seats[4]}
  let(:seat6) {row.seats[5]}

  it 'should have 50 seats when initialized' do
    expect(row.seats.count).to eq (50)
  end

  xit 'only allows adjacent seats to be booked' do
    expect{row.book_seats(seat1, seat3)}.to raise_error
  end

end