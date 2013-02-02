class RPN

  def evaluate(*args)
    stack = []
    args.each do |arg|
      puts "start of iteration, stack:  #{stack}"
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