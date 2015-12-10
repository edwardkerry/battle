require 'player'

describe Player do

  subject(:player) { described_class.new('Tony')}

  before (:each) do
    allow(Kernel).to receive(:rand).and_return(20)
  end

  it 'should return its name' do
    expect(player.name).to eq 'Tony'
  end

  it 'reduces players hp' do
    expect{player.receive_damage}.to change{player.hp}.by(-20)
  end

end
