RSpec.describe Array do
  it 'test initial length' do
    expect(subject.length).to eq(0)
    subject << 1
    expect(subject.length).to eq(1)
  end
end
# Instance of the class under test.
# With a class argument, RSpec is able to instantiate an instance of the class and make it lazily available by the subject method.