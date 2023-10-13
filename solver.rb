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

  def fizzbuzz(n)
    if n % 3 == 0 && n % 5 == 0
      'fizzbuzz'
    elsif n % 3 == 0
      'fizz'
    elsif n % 5 == 0
      'buzz'
    else
      n.to_s
    end
  end
end
