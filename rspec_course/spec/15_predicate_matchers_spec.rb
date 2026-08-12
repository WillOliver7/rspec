RSpec.describe 'predicate methods and matchers' do
    it 'can be tested with Ruby methods' do
        expect((16 / 2).even?).to  eq(true)
    end

    # Any predicate method can be tested with a predicate matcher. 
    # Predicate matchers are created by taking the name of a predicate method, 
    # removing the question mark, and prepending be_ to it.
    it 'can be tested with predicate matchers' do
        expect(16 / 2).to be_even
        expect(15).not_to be_even
        expect(0).to be_zero
        expect(nil).to be_nil
        expect([]).to be_empty
        expect([1]).not_to be_empty
    end

    describe 0 do
      it { is_expected.to be_zero}
    end
end