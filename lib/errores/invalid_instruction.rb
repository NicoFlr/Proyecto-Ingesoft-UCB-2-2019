class InvalidInstruction < StandardError
  def initialize
    super("La instruccion es invalida")
  end
end
