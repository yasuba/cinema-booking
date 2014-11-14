class Seat

  def initialize
    @available = true
  end

  def available?
    @available
  end

  def book!
    if @available == false
      raise 'This seat is already taken'
    else
      @available = false
      return self
    end
  end

end