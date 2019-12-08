class OutOfFieldError < StandardError
  def initialize
    super ("El vehiculo se salio del terreno")
  end
end
