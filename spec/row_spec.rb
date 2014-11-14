require 'row'

describe Row do

  let(:row)  {Row.new}

  it 'should have 50 seats when initialized' do
    expect(row.seats.count).to eq (50)
  end

  it 'should know which seats are available' do
    row.book_seats(0,48)
    expect(row.available_seats).to eq (1)
  end

end