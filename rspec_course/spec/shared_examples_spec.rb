# Let's say we have contexts where all subjects have something in common
# In this example they all share the length method
# If we were to test the same method like this:
# it 'returns the number of items' do
#   expect(subject.length).to eq(3)
# end
# There would be duplication of this piece of code across all contexts that need it
# To solve this we can use a shared example. Keep in mind that in a real scenario
# there would be a shared_examples_spec.rb file, separate from the other spec files
# A common setup for this is editing spec_helper file to autoload everything under spec/support
# Dir[File.join(__dir__, 'support', '**', '*.rb')].sort.each do |file|
#   require file
# end
# For simplicity, we will keep everything in a single file

RSpec.shared_examples 'a Ruby object with three elements' do
  it 'returns the number of items' do
    expect(subject.length).to eq(3)
  end
  # Since subject is lazy loaded, when the shared exempla is used inside a context
  # RSpec can figure it out based on the described_class in that context
end

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples 'a Ruby object with three elements'
end

RSpec.describe String do
  subject { 'abc' }
  include_examples 'a Ruby object with three elements'
end

RSpec.describe Array do
  subject { { a: 1, b: 2, c:3 } }
  include_examples 'a Ruby object with three elements'
end

class SausageLink
  def length
    3
  end
end

RSpec.describe SausageLink do
  subject { described_class.new }
  include_examples 'a Ruby object with three elements'
end
