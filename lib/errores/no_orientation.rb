class NoOrientation < StandardError
  def initialize
    super("No existe orientacion")
  end
end
