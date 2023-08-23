require 'byebug'
RSpec.shared_examples 'a ruby object with 3 elements' do
  it 'return the number of items' do
    expect(subject.length).to eq(3)
  end
end
RSpec.describe Array do
  subject { [1,2,3] }
  include_examples 'a ruby object with 3 elements'
end
RSpec.describe String do
  subject { 'abc' }
  include_examples 'a ruby object with 3 elements'
end
RSpec.describe Hash do
  subject { { a: 1,b: 2, c: 3 } }
  include_examples 'a ruby object with 3 elements'
end
class SausageLink
  def length
    3
  end
end
RSpec.describe SausageLink do
  subject { described_class.new }
  include_examples 'a ruby object with 3 elements'
end

# an instance of the class in the line RSpec.describe Class.
# invoke the subject method and provide a ruby block. 
# The final evaluation of the block will be the value of subject whenever it is used in an example.
# subject { 'Hello World' }
# described_class dynamically references the class being tested.
# Advantage: if the class name changes, the rest of the spec does not have to change.
# include_examples method injects pre-defined examples into an example group.
# include_context method injects context (i.e. before blocks, instance variables, helper methods, let variables) into an example group.
# Both remove duplication across tests.

