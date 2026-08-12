# In Ruby, there are only two values that evaluates to false: false and nil

RSpec.describe 'be matchers' do
  it 'can test for truthiness' do
    expect(true).to be_truthy
    expect(5).to be_truthy
    expect('string').to be_truthy
    expect([]).to be_truthy
    expect({}).to be_truthy
    expect(:symbol).to be_truthy
    expect(0).to be_truthy
  end

  it 'can test for falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it 'can test for nil' do
    expect(nil).to be_nil
    my_hash = { a: 1 }
    expect(my_hash[:b]).to be_nil
    expect(my_hash.fetch(:b, 2)).not_to be_nil
  end
end

RSpec.describe 'Hash caveat' do
    let(:my_hash) { { a: 1}}
    
    it 'can test for nil on hash values' do
      expect(my_hash[:b]).to be_nil

      # little caveat aboout hashes and the fetch method
      # if we try to fetch a key that does not exists, it will raise a KeyError
      # But if we provide a default value, it will return that value instead
      # Using the fetch method is a good way to avoid unintended nil values
      # But we must be careful to deal with the KeyError if we do not provide a default value 
      begin
        expect(my_hash.fetch(:b)).to raise_error(KeyError)
      rescue KeyError
        puts "KeyError raised as expected"
      end
      expect(my_hash.fetch(:b, 2)).not_to be_nil
    end
  end