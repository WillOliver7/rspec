RSpec.describe 'start_with and end_with matchers' do
  describe 'caterpillar' do
    it 'should check for a substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')
      expect(subject).not_to start_with('Cat') # case-sensitive
      expect(subject).to end_with('PILLAR'.downcase)
    end

    it { is_expected.to start_with('cat') }
    it { is_expected.to end_with('pillar') }
  end

  describe [:a, :b, :c, :d] do
    it 'should check for elements at the beginning or the end of arrays' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
      expect(subject).to end_with(:d)
      expect(subject).to end_with(:c, :d) # obviously, order matters
    end


    it { is_expected.to start_with(:a) }
    it { is_expected.to end_with(:d) }
  end
end