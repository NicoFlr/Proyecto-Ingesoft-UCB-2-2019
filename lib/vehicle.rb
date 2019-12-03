require_relative './errores/invalid_position'

class Vehicle

  def guide cardinal_point
    if orientation_exist cardinal_point
      @orientacion = cardinal_point
    else
      raise InvalidOrientation.new
    end
  end

  def orientation_exist orientacion
    "nwse".include? orientacion
  end

  def get_x_position
    @posicionX
  end

  def get_y_position
    @posicionY
  end

  def set_x_position posicionX
    if posicionX < 0
      raise InvalidPosition.new
    else
      @posicionX = posicionX
    end
  end

  def set_y_position posicionY
    if posicionY < 0
      raise InvalidPosition.new
    else
      @posicionY = posicionY
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
      raise NoOrientation
    end
  end

  def advance
    case @orientacion
    when "n"
      set_y_position @posicionY + 1
    when "e"
      set_x_position @posicionX + 1
    when "s"
      set_y_position @posicionY - 1
    when "w"
      set_x_position @posicionX - 1
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
end