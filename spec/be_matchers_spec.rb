# falsey values : false, nil
# truthy values : everything else
RSpec.describe 'be matcher' do
  it 'can test for truthiness' do
    expect(true).to be_truthy
    expect(-1).to be_truthy
    expect([]).to be_truthy
    expect({}).to be_truthy
  end
  it 'can test for falsiness' do
    expect(false).to be_falsey
    expect(nil).to be_falsey
  end
  it 'can test for nil' do
    expect(nil).to be_nil
    my_hash = {a: 5}
    expect(my_hash[:b]).to be_nil
  end
end
# 1. expect({}).to be_empty
# 2. expect([10,20,30]).to all(be_even)
# 3. expect([0,1,2]).to all(be >= 0)
# 4. truthy: 'hello', 0, -10, [], 99.99, :hello, true, [1,2,3]
#    falsy: false, nil