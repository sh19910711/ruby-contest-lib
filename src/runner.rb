class Solution::Runner

  def self.run(input_format, input_stream = STDIN, output_stream = STDOUT, &block)
    Solution::Solver.new(input_format, input_stream, output_stream) do
      input do |args|
        if block.nil?
          output solve(*args)
        else
          output block.call(*args)
        end
      end
    end
  end

end

