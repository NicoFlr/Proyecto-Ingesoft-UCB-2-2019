class InvalidPosition < StandardError
  def initialize
    super("La posicion no es valida")
  end
end
