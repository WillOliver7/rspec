RSpec.describe '#even? method' do
  describe 'with even number' do
    it 'returns true' do
      expect(2.even?).to eq(true)
    end
  end

  describe 'with odd number' do
    it 'returns false' do
      expect(3.even?).to eq(false)
    end
  end
end