class Solution::Solver

  attr_reader :input_format

  def initialize(new_input_format, &block)
    @input_format = new_input_format
    instance_eval(&block) if block_given?
  end

  def input
    while s = gets
      break if s.nil?
      s.scanf(input_format) do |*args|
        yield(*args)
      end
    end
  end

  def output(res)
    puts res
  end

end

