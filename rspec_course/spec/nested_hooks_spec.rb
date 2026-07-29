RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'OUTER Before context'
  end

  #This runs after the entire context we're in, in this case the entire describe block
  before(:example) do
    puts 'OUTER Before example'
  end

  it 'does basic math' do
    expect(1 + 1).to eq(2)
  end

  context 'with condition A' do
    before(:context) do
      puts 'INNER Before context'
    end

    before(:example) do
      puts 'INNER Before example'
    end

    it 'does some other math' do
      expect(2 + 2).to eq(4)
    end

    it 'does some subtraction too' do
      expect(2 - 2).to eq(0)
    end
  end
end