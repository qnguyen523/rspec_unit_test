RSpec.describe 'not_to method' do
  it 'check for the inverse of a matcher' do
    expect(5).not_to eq(10)
    expect([1]).not_to equal([1])
    expect(10).not_to be_odd
    expect([1]).not_to be_empty
    expect(nil).not_to be_truthy
    expect('Philadelphia').not_to start_with('car')
    expect('Philadelphia').not_to end_with('city')
    expect(5).not_to respond_to(:length)
    expect([1]).not_to include(2)
    expect{11 / 3}.not_to raise_error
  end
end