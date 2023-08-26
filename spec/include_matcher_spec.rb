RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it 'check for substring inclusion' do
      expect(subject).to include('hot')
      expect(subject).to include('choc')
      expect(subject).to include('late')
    end
    it {is_expected.to include('choc')}
  end
  describe [10,20,30] do
    it 'check for inclusion in the array' do
      expect(subject).to include(20)
      expect(subject).to include(30,10)
    end
    it {is_expected.to include(10)}
  end
  describe ({a: 1, b: 2}) do
    it 'check for key existence' do
      expect(subject).to include(:a)
      expect(subject).to include(:a, :b)
      expect(subject).to include(:b, :a)
    end
    it 'check for key-value pair' do
      expect(subject).to include(a: 1)
      expect(subject).to include(b: 2)
    end
    it {is_expected.to include(b: 2)}
  end
end