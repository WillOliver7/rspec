RSpec.describe Hash do
    # let(:subject) { Hash.new }
    # since we are testing the Hash class, we can use implicit subject
    
    it 'should start off empty' do
        expect(subject.length).to eq(0)
        subject[:some_key] = 'Some value'
        expect(subject.length).to eq(1)
    end

    it 'is isolated between examples' do
      expect(subject.length).to eq(0)
    end
end

RSpec.describe Array do
    # let(:subject) { Array.new }
    # Task given by the course
    # The subject method returns an instace of the class being tested without any initial parameters
    # It is better to pass a class argument to the describe method instead of a string with the class name
    # mainly because lazily loads an instance of the class available through the subject method
    
    it 'should start off empty' do
        expect(subject.length).to eq(0)
        subject.push('Some value')
        expect(subject.length).to eq(1)
    end
end
