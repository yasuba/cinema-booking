require './lib/row'

class Cinema

  attr_reader :rows

  def initialize
    @rows = Array.new(100) {|i| i = Row.new}
  end

  def book_seats(row_number, first_seat, last_seat)
    rows[row_number].seats[first_seat..last_seat].each {|seat| seat.book!}
  end

end