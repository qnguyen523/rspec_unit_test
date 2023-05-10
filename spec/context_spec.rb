RSpec.describe '#even? method' do
  describe 'with even number' do
    it 'should return true if the number is even' do
      expect(4.even?).to eq(true)
    end
  end
  describe 'with odd number' do
    it 'should return true if the number is odd' do
      expect(5.even?).to eq(false)
    end
  end
end