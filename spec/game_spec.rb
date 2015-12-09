require 'game'

describe Game do
  subject(:game) {described_class.new(vic, bob)}
  let(:bob) {double(:player)}
  let(:vic) {double(:player)}

  describe '#player1' do
    it 'retrieves the first player' do
      expect(game.player1).to eq vic
    end
  end

  describe '#player2' do
    it 'retrieves the second player' do
      expect(game.player2).to eq bob
    end
  end

  describe '#hug' do
    it 'hugs the other player' do
      expect(bob).to receive(:reduce_hug_points)
      game.hug(bob)
    end
  end


end
