RSpec.describe 'raise_error matcher' do

  # A method that raises a NameError
  def some_method
    x
  end

  # This alone prints this message
  # WARNING: Using the `raise_error` matcher without providing a specific error 
  # or message risks false positives, since `raise_error` will match when Ruby raises 
  # a `NoMethodError`, `NameError` or `ArgumentError`, potentially allowing the expectation 
  # to pass without even executing the method you are intending to call.
  it 'checks for any error' do
    expect { some_method }.to raise_error
  end

  it 'checks for a specific error' do
    expect { some_method }.to raise_error(NameError)
    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
  end

  class CustomError < StandardError; end

  it 'checks for custom errors' do
    expect {raise CustomError }.to raise_error(CustomError)
  end
end