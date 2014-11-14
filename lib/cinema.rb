require './lib/row'

class Cinema

  attr_reader :rows

  def initialize
    @rows = Array.new(100) {|i| i = Row.new}
  end

  def book_seats(row_number, first_seat, last_seat)
    booking = rows[row_number].seats[first_seat..last_seat]
    if booking.length <= 5
      booking.each {|seat| seat.book!}
    else
      raise "You can't book more than five seats"
    end
  end

end



