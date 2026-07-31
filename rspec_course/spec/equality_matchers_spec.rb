RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'eq matcher' do
    it 'tests for values and ignores type' do
      expect(a).to eq(3)
      expect(b).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  describe 'eql matcher' do
    it 'tests for value, including same type' do
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(b)
    end
  end

  describe 'equal/be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'cares about object identity' do
      expect(c).to eq(d) # same values
      expect(c).to eql(d) # same values and data type

      expect(c).not_to equal(d) # Not the same object in memory (pointer)
      expect(c).not_to be(d) # be is an alias for equal
      expect(e).not_to be(d) # same value but not the same pointer

      expect(e).to be(c) # same object in memory
    end
  end
end