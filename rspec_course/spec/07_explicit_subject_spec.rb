RSpec.describe Hash do
  subject do
    # Whatever is returned from this block will be the subject available to the examples
    { a: 1, b: 2 }
  end

  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
  end
end

RSpec.describe Array do
  subject(:my_array) do
    # We can give aliases to the subjects we create
    [ 1, 2 ]
  end

  # Doing this:
  # let(:my_array) [ 1, 2 ]
  # Would be somewhat equivalent, but the explicit subject gives access to other shorthand syntax
  # that will be explored later

  it 'has two values' do
    expect(my_array.length).to eq(2)
    expect(subject.length).to eq(2) # In this case, both aliases are valid
  end

  describe 'nested example' do
    # subject (and its aliases) are declared in the upper scope, so they are avaible 
    # in lower scopes as well
    it 'has two values' do
      expect(my_array.length).to eq(2)
      expect(subject.length).to eq(2) # In this case, both aliases are valid
    end
  end
end