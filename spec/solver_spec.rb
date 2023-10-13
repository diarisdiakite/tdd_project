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
end
