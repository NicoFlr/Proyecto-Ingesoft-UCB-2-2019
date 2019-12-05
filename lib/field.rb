require_relative './errores/invalid_measures'

class Field

  def get_rows
    @rows
  end

  def get_columns
    @columns
  end

  def set_rows rows
    if check rows
      @rows = rows
    end
  end

  def set_columns columns
    if check columns
      @columns = columns
    end
  end

  def check rows_or_columns
    if rows_or_columns < 1
      raise InvalidMeasures.new
    else
      true
    end
  end
end