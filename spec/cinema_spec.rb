require 'cinema'

describe Cinema do

  let (:cinema) {Cinema.new}
  let (:row) {double :row}

  it 'shoud have 100 rows' do
    expect(cinema.rows.count).to eq 100
  end


end