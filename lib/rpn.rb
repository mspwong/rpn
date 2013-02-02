class RPN

  def self.evaluate(*args)
    stack = []

    args.each do |arg|
      unless ['+', '-', '*', '/', '%', '**', '<', '<=>'].include? arg
        stack.push(arg)
      else
        operands = stack.pop(2)
        result = operands.first.to_f.send arg, operands.last
        stack.push(result)
      end
    end

    stack.pop
  end
end