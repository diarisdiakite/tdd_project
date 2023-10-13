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
end
