require 'game'

describe Game do
  subject(:game) {described_class.new(vic, bob, attach)}
  let(:finished_game) {described_class.new(vic, dead_guy, attach)}
  let(:vic) {double(:player1, hug_points: 150)}
  let(:bob) {double(:player2, hug_points: 150)}
  let(:dead_guy) {double(:player, hug_points: 0)}
  let(:attach) { double :attach }


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

  describe '#game_over' do
    it 'should return false if no-one is at 0HP' do
      expect(game.game_over?).to be false
    end

    it 'should return true if a player is at 0HP' do
      expect(finished_game.game_over?).to be true
    end

  end


end
