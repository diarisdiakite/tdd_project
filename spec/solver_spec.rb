require 'rspec'
require_relative '../solver'

describe Solver do
  solver = Solver.new

  describe '#factorial' do
    it 'returns 0 when the input is 1' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns the factorial of a given positive Integer' do
      expect(solver.factorial(3)).to eq(6)
    end

    it 'raises an exception when the input is a negative number' do
      expect { solver.factorial(-3) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'returns a character when the input length is 1' do
      expect(solver.reverse('h')).to eq('h')
    end

    it 'returns the reverse of a given string' do
      expect(solver.reverse('Hello')).to eq('olleH')
    end

    it 'raises an exception when the string length is 0' do
      expect { solver.reverse('') }.to raise_error(ArgumentError)
    end
  end

  describe '#fizzbuzz' do
    it "returns 'fizz' when 'N' is divisible by 3" do
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end

    it "returns 'buzz' when 'N' is divisible by 5" do
      expect(solver.fizzbuzz(25)).to eq('buzz')
    end

    it "returns 'fizzbuzz' when 'N' is divisible by 3 and by 5" do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it "returns 'N' as a string when 'N' is not divisible by 3 and/or by 5" do
      expect(solver.fizzbuzz(7)).to eq('7')
    end
  end
end
