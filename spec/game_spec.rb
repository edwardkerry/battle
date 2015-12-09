require 'game'

describe Game do
  subject(:game) {described_class.new(vic, bob)}
  let(:vic) {double(:player1)}
  let(:bob) {double(:player2)}

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

  describe '#player_whos_go_it_is' do
    it 'should be player 1\'s first' do
      expect(game.whos_go).to eq vic
    end

    context 'after player 1\'s turn' do
      it 'should be player 2\' turn' do
        game.switch_turns
        expect(game.whos_go).to eq bob
      end
    end

    context 'after player 2\'s turn' do
      it 'should be player 1\'s turn' do
        game.switch_turns
        game.switch_turns
        expect(game.whos_go).to eq vic
      end
    end
  end


end
