class RPN

  def evaluate(*args)
    op_index = operator_index(args)
    operate(args, op_index)
  end

  def operator_index(args)
    ['+', '-', '*', '/', '%', '**', '<', '<=>'].each do |op|
      index = args.index(op)
      return index unless index.nil?
    end
  end

  def operate(args, op_index)
    args[op_index-2].to_f.send args[op_index], args[op_index-1]
  end
end