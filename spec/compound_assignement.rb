RSpec.describe 'firetruck' do
  it 'compound expectation' do
    expect(subject).to start_with('fire').and end_with('truck')
  end 
end
RSpec.describe 20 do
  it 'compound expectation' do
    expect(subject).to be_even.and respond_to(:times)
  end
end
RSpec.describe [4,8,15,16,23,42] do
  it 'compound expectation' do
    expect(subject).to include(42).and start_with(4,8,15)
  end
end