RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include('ho')
      expect(subject).not_to include('arr')
    end

    it { is_expected.to include('choc') }
    it { is_expected.not_to include('-') }
  end

  describe [10, 20, 30] do
    it 'checks for inclusion in the array, regardeless of order' do
      expect(subject).to include(10)
      expect(subject).to include(30,10)
    end

    it { is_expected.to include(10, 20, 30) }

    it {is_expected.not_to include('string') }
  end

  describe ({ a: 1, b: 2}) do
    it 'can check for key existence' do
      expect(subject).to include(:a, :b)
      expect(subject).not_to include(:c)
    end

    it 'can check for key-value pair' do
      expect(subject).to include(a: 1)
      expect(subject).not_to include(a: 2)
    end

    it { is_expected.to include(:a) }
    it { is_expected.not_to include(:f) }
    it { is_expected.to include(a: 1) }
    it { is_expected.not_to include(a: 2) }
  end
end