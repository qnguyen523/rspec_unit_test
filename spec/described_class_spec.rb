class Royal
  attr_reader :name
  def initialize(name)
    @name = name
  end
  RSpec.describe Royal do
    subject { described_class.new('Boris') }
    let(:louis) { described_class.new('Louis') }

    it 'represent a great person' do
      expect(subject.name).to eq('Boris')
      expect(louis.name).to eq('Louis')
    end
  end
end