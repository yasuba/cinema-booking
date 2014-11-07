require 'row'

describe Row do

  let(:row) {Row.new}

  it 'should have seats' do
    expect(row).to have_seats
  end

  it 'should have 50 seats' do
    expect(row.seat_count).to eq 50
  end

end