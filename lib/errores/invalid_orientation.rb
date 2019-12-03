class InvalidOrientation < StandardError
  def initialize
    super("La orientacion es invalida")
  end
end
