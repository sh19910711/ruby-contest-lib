class Solution::Runner

  def self.run(input_format, &block)
    Solution::Solver.new(input_format) do
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

