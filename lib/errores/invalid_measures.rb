class InvalidMeasures < StandardError
  def initialize
    super("La dimension del terreno es invalida")
  end
end