require 'rpn'

describe RPN do
  describe '::evaluate' do
    context 'single operation' do
      it 'returns correct result for +' do
        subject.class.evaluate(3, 2, '+').should == 5
      end

      it 'returns correct result for -' do
        subject.class.evaluate(3, 2, '-').should == 1
      end

      it 'returns correct result for *' do
        subject.class.evaluate(3, 2, '*').should == 6
      end

      it 'returns correct result for / of integers' do
        subject.class.evaluate(3, 2, '/').should == 1.5
      end

      it 'returns correct result for / of floats' do
        subject.class.evaluate(3.0, 2.0, '/').should == 1.5
      end

      it 'returns correct result for %' do
        subject.class.evaluate(3, 2, '%').should == 1
      end

      it 'returns correct result for **' do
        subject.class.evaluate(3, 2, '**').should == 9
      end

      it 'returns correct result for <' do
        subject.class.evaluate(3, 2, '<').should be_false
      end

      it 'returns correct result for <=>' do
        subject.class.evaluate(3, 2, '<=>').should == 1
      end
    end

    context 'multiple operations' do
      it 'returns correct result example 1' do
        subject.class.evaluate(4, 3, '+', 6, '*').should == 42
      end

      it 'returns correct result for example 2' do
        subject.class.evaluate(4, 3, '+', 6, '*', 2, '/', 3, 2, '**', '*').should == 189
      end

      it 'returns correct result for example 3' do
        subject.class.evaluate(1, 2, '+', 3, 4, '+', '*').should == 21
      end

      it 'returns correct result for example 4' do
        subject.class.evaluate(1, 2, 3, '*', '+', 4, '+').should == 11
      end

      it 'returns correct result for example 5' do
        subject.class.evaluate(1, 2, 3, 4, '+', '*', '+').should == 15
      end

      it 'returns correct result for example 6' do
        subject.class.evaluate(1, 2, '+', 3, '*', 4, '+').should == 13
      end
    end
  end
end