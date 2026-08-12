class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  # If we do something like this
  # subject { King.new('Boris') }
  # let(:louis) { King.new('Louis') }
  # And later on the class name of King must change for some reason
  # We'd have to change all ocurrences os the class name
  # Assuming a more complex test scenario, it wouldn't be ideal
  # Instead, we use the described class method provided by RSpec
  
  subject { described_class.new('Boris') }
  let(:louis) { described_class.new('Louis') }
  # the desbribed_class does exactly what the name suggests
  # it refers to the class that we are describing and testing

  it 'represents a great person' do
    expect(subject.name).to eq('Boris')
  end
end