class ProgrammingLanguage
  attr_reader :name

  def initialize(name = 'Ruby')
    @name = name
  end
end

# whenever RSpec looks for a let variable, it first looks in the current context
# if does not find it, it will look in the parent contexts until it does
# if it does find it, it will use that value
# if it does not find it in any context, it will raise an error

RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new('Python')}

  it 'should store the name of the language' do
    expect(language.name).to eq('Python')
  end

  context 'with no argument' do
    let(:language) { ProgrammingLanguage.new }

    it 'should default to Ruby' do
      expect(language.name).to eq('Ruby')
    end
  end
end