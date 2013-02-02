require 'rpn'

describe RPN do
  describe '::evaluate' do
    it 'returns correct result for single +' do
      subject.evaluate(3, 2, '+').should == 5
    end

    it 'returns correct result for single -' do
      subject.evaluate(3, 2, '-').should == 1
    end

    it 'returns correct result for single *' do
      subject.evaluate(3, 2, '*').should == 6
    end

    it 'returns correct result for single / of integers' do
      subject.evaluate(3, 2, '/').should == 1.5
    end

    it 'returns correct result for single / of floats' do
      subject.evaluate(3.0, 2.0, '/').should == 1.5
    end

    it 'returns correct result for single %' do
      subject.evaluate(3, 2, '%').should == 1
    end

    it 'returns correct result for single **' do
      subject.evaluate(3, 2, '**').should == 9
    end

    it 'returns correct result for single <' do
      subject.evaluate(3, 2, '<').should be_false
    end

    it 'returns correct result for single <=>' do
      subject.evaluate(3, 2, '<=>').should == 1
    end
  end

  describe '::operate_index' do
    it '::operate_index' do
      subject.operator_index([3, 2, '+']).should == 2
    end
  end

  describe '::operate' do
    it '::operate' do
      subject.operate([3, 2, '+'], 2).should == 5
    end
  end
end