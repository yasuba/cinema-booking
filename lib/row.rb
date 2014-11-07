require './lib/seat'

class Row

  def initialize
    @seats = []
    create_seats
  end

  def create_seats
    for i in (1..50) do
      @seats << Seat.new
    end
  end

  def has_seats?
    true
  end

  def seat_count
    @seats.count
  end


end