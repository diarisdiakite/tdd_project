class Solver
  def factorial(n)
    if n < 0
      raise ArgumentError
    elsif n == 0
      1
    else
      n * factorial(n - 1)
    end
  end

  def reverse(str)
    if str.length == 0
      raise ArgumentError, 'Cannot reverse an empty string'
    elsif str.length == 1
      str
    else
      str.reverse
    end
  end
end
