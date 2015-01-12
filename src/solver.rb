class Solution::Solver

  attr_reader :input_format
  attr_reader :input_stream
  attr_reader :output_stream

  def initialize(new_input_format, new_input_stream, new_output_stream, &block)
    @input_format = new_input_format
    @input_stream = new_input_stream
    @output_stream = new_output_stream

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

