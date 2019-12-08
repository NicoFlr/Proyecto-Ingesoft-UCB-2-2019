require_relative './errores/invalid_measures'

class Field

  def get_rows
    @rows
  end

  def get_columns
    @columns
  end

  def set_rows rows
    if check_rows rows
      @rows = rows
    end
  end

  def set_columns columns
    if check_columns columns
      @columns = columns
    end
  end

  def check_rows rows
    if rows < 1
      raise InvalidXMeasures.new
    else
      true
    end
  end

  def check_columns columns
    if columns < 1
      raise InvalidYMeasures.new
    else
      true
    end
  end
end