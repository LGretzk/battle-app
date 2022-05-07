require 'player'

describe Player do

  subject(:luiza) {Player.new('Luiza')}
  subject(:archie) {Player.new('Archie')}

  describe '#name' do
    it 'returns the name' do
      expect(luiza.name).to eq 'Luiza'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(luiza.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive damage' do
    it 'reduces the player hit points' do
      expect { luiza.receive_damage }.to change { luiza.hit_points }.by(-10)
    end
  end

end