RSpec.describe 'satisfy matcher' do
  subject { 'racecar' }
  
  # In case of a failure, this syntax is not descriptive
  it 'is a palindrome' do
    expect(subject).to satisfy { |value| value == value.reverse }
  end

  # This is an example with a custom failure message
  it 'can accept a custom error message' do
    expect(subject).to satisfy('be a palindrome') { |value| value == value.reverse }
  end
end