class Game
  attr_reader :terreno, :instrucciones

  def initialize
    @instrucciones = []
  end

  def add_instruction instruccion
    @instrucciones.push instruccion
  end

  def get_instruction
    @instrucciones
  end

  def set_field field
    @field = field
  end

  def get_field
    @field
  end

  def execute

  end
end
