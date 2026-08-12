class HotChocolate
  def drink
    'Delicious'
  end

  def discard
    'PLOP!'
  end

  def purchase(number)
    "Awesome, I just purchase #{number} more hot chocolate beverages!"
  end
end

class Coffee
  def drink; end
  def discard; end
  def purchase(number); end
end

# We want to check if an object can respond to a method, not caring for the output of said method
RSpec.describe HotChocolate do
  it 'confirms that an object can respond to a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard)
    expect(subject).to respond_to(:purchase) # we don't even care what the method's signature is
  end

  # if we do care about the signature:
  it 'confirms an object can respond to a method with arguments' do
    expect(subject).to respond_to(:purchase).with(1).arguments
  end

  it { is_expected.to respond_to(:purchase, :discard) }
  it { is_expected.to respond_to(:purchase).with(1).arguments }
end