require './lib/row'

class Cinema

  attr_reader :rows

  def initialize
    @rows = Array.new(100) {|i| i = Row.new}
  end

  def book_seats(row_number, seat_number)
    rows[row_number].seats[seat_number].book!
  end

end