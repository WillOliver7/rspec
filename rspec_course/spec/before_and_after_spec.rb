RSpec.describe 'before and after hooks' do
  before(:context) do
    puts 'Before context | This runs before the entire context we are in, in this case the entire describe block'
  end

  #This runs after the entire context we're in, in this case the entire describe block
  after(:context) do
    puts 'After context | This runs after the entire context we are in, in this case the entire describe block'
  end

  before(:example) do
    puts 'Before example | This runs before each example in the context we are in, in this case the entire describe block'
  end

  after(:example) do
    puts 'After example | This runs after each example in the context we are in, in this case the entire describe block'
  end

  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'is just another random example' do
    expect(3 - 2).to eq(1)
  end
end