RSpec.describe 'a random double' do
  # first syntax
  it 'only allows defined methods to be invoked' do
    stuntman = double('Mr. Danger', fall_off_ladder: 'Ouch', light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to eq(true)
  end

  # second syntax
  it 'only allows defined methods to be invoked too' do
    stuntman = double('Mr. Danger')
    allow(stuntman).to receive(:fall_off_ladder)
    # if no return value is provided, it fall back to nil
    expect(stuntman.fall_off_ladder).to be_nil
    allow(stuntman).to receive(:light_on_fire).and_return(true)
    expect(stuntman.light_on_fire).to eq(true)
  end

  # Third syntax
    it 'only allows defined methods to be invoked again' do
    stuntman = double('Mr. Danger')
    allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to eq(true)
  end
end