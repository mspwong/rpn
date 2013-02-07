class RPN

  def self.evaluate(*args)
    stack = []

    args.each do |arg|
      unless ['+', '-', '*', '/', '%', '**', '<', '<=>'].include? arg
        stack.push(arg)
      else
        operands = stack.pop(2)
        result = eval(operands.first.to_f.to_s + arg + operands.last.to_s)
        stack.push(result)
      end
    end

    stack.pop
  end
end