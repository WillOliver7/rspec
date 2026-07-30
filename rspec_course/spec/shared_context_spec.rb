# The shared_context is a method similar to shared_example where you can share
# anything you can do inside a context with other contexts

RSpec.shared_context 'common_context' do
  before do
    @foods = []
  end

  def some_helper_method
    5
  end

  let(:some_variable) { [1, 2, 3] }
end

RSpec.describe 'first example group' do
  include_context 'common_context'

  it 'can use outside instance variables' do
    expect(@foods.length).to eq(0)
    @foods << 'Sushi'
    expect(@foods.length).to eq(1)
  end

  it 'can reuse instance variables across different examples' do
    expect(@foods.length).to eq(0)
  end

  it 'can use shared helper methods' do
    expect(some_helper_method).to eq(5)
  end
end

# Now, inside another context we can reuse the funcionality available in the shared_context
RSpec.describe 'second example' do
  include_context 'common_context'

  it 'can use shared let variables' do
    expect(some_variable.length).to eq(3)
  end
end