RSpec.describe 'start with and end with matcher' do
  describe 'caterpillar' do
    it 'should check for substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')
    end
    it {is_expected.to start_with('cat')}
    it {is_expected.to end_with('pillar')}
  end
  describe [:a,:b,:c,:d] do
    it 'should check for elements at beginning or end' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
      expect(subject).to start_with(:a, :b, :c)
      expect(subject).to end_with(:d)
      expect(subject).to end_with(:c, :d)
    end
    it {is_expected.to start_with(:a, :b, :c, :d)}
    it {is_expected.to end_with(:a, :b, :c, :d)}
  end
end