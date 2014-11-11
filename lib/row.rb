require './lib/seat'

class Row

  attr_accessor :seats, :available_seats

  def initialize
    @seats = Array.new(50) {|i| i = Seat.new}
  end

  def seat_count
    @seats.count
  end

  def book_seats(seat)
    if seat.available?
      seat.book!
      @available_seats = @seats.reject! { |s| !s.available? }.count
    else
      raise 'That seat has already been booked'
    end
  end

end