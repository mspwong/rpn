class RPN

  def self.evaluate(*args)
    op_index = operator_index(args)
    operate(args, op_index)
  end

  def self.operator_index(args)
    ['+', '-', '*', '/'].each do |op|
      index = args.index(op)
      return index unless index.nil?
    end
  end

  def self.operate(args, op_index)
    case args[op_index]
      when '+'
        args[op_index-2] + args[op_index-1]
      when '-'
        args[op_index-2] - args[op_index-1]
      when '*'
        args[op_index-2] * args[op_index-1]
      when '/'
        args[op_index-2] / args[op_index-1]
    end
  end
end