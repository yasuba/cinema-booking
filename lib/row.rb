require './lib/seat'
require './lib/row'

class Row

  attr_reader :seats

  def initialize
    @seats = Array.new(50) {|i| i = Seat.new}
  end

  def available_seats
     @available_seats = @seats.reject { |s| !s.available? }.count
  end

  def book_seats(first_seat, last_seat)
    @seats[first_seat..last_seat].each {|seat| seat.book!}
  end

end

