require 'pry'
require 'pry-debugger'
require 'pry-stack_explorer'


# def sum(a, b)
#   a + b
# end

# def square(a)
#   binding.pry
#   a ** 2
# end

# def cube(a)
#   square(a) * a
# end

def factorial(x)
  if x == 1
    1
  else
    x * factorial(x-1)
  end
end


def fib(x)
  if x == 1 || x == 2
    1
  else
    fib(x-1) + fib(x-2)
  end
end

puts fib(11)


class Node
  attr_accessor :data, :prv, :nxt
  def initialize(data)
    self.data = data
    self.prv = self.nxt = nil
  end
end

binding.pry
