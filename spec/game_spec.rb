require 'game'

describe Game do
  subject(:game) {described_class.new}
  let(:bob) {double(:player)}
  let(:vic) {double(:player)}


  describe '#hug' do
    it 'hugs the other player' do
      expect(bob).to receive(:reduce_hug_points)
      game.hug(bob)
    end
  end

end
