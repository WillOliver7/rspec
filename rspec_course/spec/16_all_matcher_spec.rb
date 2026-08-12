RSpec.describe 'all matcher' do
  it 'allows for aggregate checks' do
    # [5, 7 , 9].each do |val|
    #   expect(val).to be_odd
    # end
    expect([5, 7, 9]).to all(be_odd)
  end

  # shorter syntax
  describe [5, 7, 9] do
    it { is_expected.to all(be_odd) }
    it { is_expected.to all(be < 10)}
    it { is_expected.to all(be_positive)}
    it { is_expected.to all(be_an(Integer)) }
  end
end