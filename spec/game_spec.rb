require 'game'
require 'player'

describe Game do
  subject(:game) {Game.new(luiza, archie)}
  let(:luiza) { double :player}
  let(:archie) { double :player}

  describe 'initialize' do
    it 'accepts player 1 as argument' do
      expect(game.p1).to eq luiza
    end

    it 'accepts player 2 as argument' do
      expect(game.p2).to eq archie
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(archie).to receive(:receive_damage)
      game.attack(archie)
    end
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq luiza
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq archie
    end
  end

end