require_relative './errores/invalid_position'

class Vehicle

  def guide cardinal_point
    if orientation_exist cardinal_point
      @orientacion = cardinal_point
    else
      raise InvalidOrientation.new
    end
  end

  def get_x_position
    @posicion_x
  end

  def get_y_position
    @posicion_y
  end

  def set_x_position posicion_x
    if posicion_x < 0
      raise InvalidXPosition.new
    else
      @posicion_x = posicion_x
    end
  end

  def set_y_position posicion_y
    if posicion_y < 0
      raise InvalidYPosition.new
    else
      @posicion_y = posicion_y
    end
  end

  def turn_right
    case @orientacion
    when "n"
      guide "e"
    when "e"
      guide "s"
    when "s"
      guide "w"
    when "w"
      guide "n"
    else
      raise NoOrientation.new
    end
  end

  def advance
    case @orientacion
    when "n"
      set_y_position @posicion_y + 1
    when "e"
      set_x_position @posicion_x + 1
    when "s"
      set_y_position @posicion_y - 1
    when "w"
      set_x_position @posicion_x - 1
    else
      raise NoOrientation.new
    end
  end

  def get_orientation
    @orientacion
  end

  def turn_left
    case @orientacion
    when "n"
      guide "w"
    when "e"
      guide "n"
    when "s"
      guide "e"
    when "w"
      guide "s"
    else
      raise NoOrientation.new
    end
  end

  private
  def orientation_exist orientacion
    "nwse".include? orientacion
  end
end