RSpec.describe Array do
  subject(:sally) do
    [1, 2]
  end
  it 'has two elments' do
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
  end
  it 'create a new object for a new example' do
    expect(sally).to eq([1, 2])
  end
end