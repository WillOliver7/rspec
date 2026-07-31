RSpec.describe 'comparison matchers' do
  it 'allows for comparison with buit-in Ruby operators' do
    expect(7).to be > 5
    expect(8).to be < 15
    expect(1).to be >= -1
    expect(4).to be <= 100
    expect(22).to be >= 22
  end

  describe 100 do # this is the same
    # subject { 100 } -> as this
    # and it could be an instance of a class too
    
    it { is_expected.to be > 90 }
    it { is_expected.to be < 120 }
    it { is_expected.to be >= 100 }
    it { is_expected.to be <= 200 }
  end
end