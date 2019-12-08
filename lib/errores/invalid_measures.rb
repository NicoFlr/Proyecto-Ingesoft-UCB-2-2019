class InvalidMeasures < StandardError
  def initialize
    super("La dimension del terreno es invalida")
  end
end

class InvalidXMeasures < InvalidMeasures
end

class InvalidYMeasures < InvalidMeasures
end