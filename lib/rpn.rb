class RPN

  def self.evaluate(*args)
    stack = []

    args.each do |arg|
      if ['+', '-', '*', '/', '%', '**', '<', '<=>'].include? arg
        operands = stack.pop(2)
        result = operands.first.to_f.send arg, operands.last
        stack.push(result)
      else
        stack.push(arg)
      end
    end

    stack.pop
  end
end