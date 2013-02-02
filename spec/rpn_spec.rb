require 'rpn'

describe RPN do
  describe '::evaluate' do
    it 'returns correct result for single add operation' do
      subject.class.evaluate(3, 2, '+').should == 5
    end

    it 'returns correct result for single subtract operation' do
      subject.class.evaluate(3, 2, '-').should == 1
    end

    it 'returns correct result for single multiply operation' do
      subject.class.evaluate(3, 2, '*').should == 6
    end

    it 'returns correct result for single divide operation' do
      subject.class.evaluate(4, 2, '/').should == 2
    end
  end

  describe '::operate_index' do
    it '::operate_index' do
      RPN.operator_index([3, 2, '+']).should == 2
    end
  end

  describe '::operate' do
    it '::operate' do
      RPN.operate([3, 2, '+'], 2).should == 5
    end
  end
end