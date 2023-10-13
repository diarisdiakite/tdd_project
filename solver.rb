class Solver
  def factorial(num)
    if num.negative?
      raise ArgumentError
    elsif num.zero?
      1
    else
      num * factorial(num - 1)
    end
  end

  def reverse(str)
    if str.empty?
      raise ArgumentError, 'Cannot reverse an empty string'
    elsif str.length == 1
      str
    else
      str.reverse
    end
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
