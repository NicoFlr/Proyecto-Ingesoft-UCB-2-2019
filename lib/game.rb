class Game

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
    if @vehicle_controller != nil
      @instrucciones.each do |i|
        @vehicle_controller.execute_instruction i
      end
    end
  end

  def set_vehicle_controller controller
    @vehicle_controller = controller
  end

  def get_vehicle_controller
    @vehicle_controller
  end

  def set_vehicle_controller_to_field
    @vehicle_controller.set_field @field
  end
end
