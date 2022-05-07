require 'game'

describe Game do
  #subject(:luiza) {Player.new('Luiza')}
  subject(:archie) {Player.new('Archie')}

  describe '#attack' do
    it 'damages the player' do
      expect(archie).to receive(:receive_damage)
      subject.attack(archie)
    end
  end

end