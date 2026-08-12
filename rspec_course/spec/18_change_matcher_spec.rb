RSpec.describe 'change matcher' do
  subject { [1, 2, 3] }

  it 'checks that a method changes object state' do
    # This approach is too conected to the subject current state
    # If we added another item to the sunject, this would break
    expect { subject.push(4) }.to change { subject.length }.from(3).to(4)

    # In this case the lenght is checked dynamically if it changes by 1
    # regardless of the original sunject's lenght
    expect { subject.push(4) }.to change { subject.length }.by(1)
  end

  it 'accepts negative arguments' do
    # Same problem here. Also, remember that subject is reloaded between contexts
    # so, in here, it has 3 elements again, despite the changes made in the previous context
    # expect { subject.pop }.to change { subject.length }.from(3).to(2)
    expect { subject.pop }.to change { subject.length }.by(-1)
  end
end