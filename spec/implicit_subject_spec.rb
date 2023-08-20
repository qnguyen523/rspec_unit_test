RSpec.describe Hash do
  # let(:my_hash) { {} }
  # let(:subject) { Hash.new }
  it 'should start off empty' do
    expect(subject.length).to eq(0)
    puts subject
    puts subject.class
    subject[:some_key] = 'some value'
    expect(subject.length).to eq(1)
  end
  it 'is isolated b/w examples' do
    expect(subject.length).to eq(0)
  end
end