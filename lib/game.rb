class Game
  attr_reader :terreno, :instrucciones

  def initialize
    @instrucciones = []
  end

  def agregarInstruccion instruccion
    @instrucciones.push instruccion
  end

  def getInstrucciones
    @instrucciones
  end
end
