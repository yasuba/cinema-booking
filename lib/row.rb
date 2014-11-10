require './lib/seat'

class Row

  attr_accessor :seats, :available_seats

  def initialize
    @seats = Array.new(50) {|i| i = Seat.new}
  end

  def has_seats?
    true
  end

  def seat_count
    @seats.count
  end

  def book_seats(seat)
    seat.book!
    # @unavailable_seats = []
    # @unavailable_seats << seat.book!
    @available_seats = @seats.reject! { |s| !s.available? }.count
  end

end