require 'player'

describe Player do
  subject(:claire) { Player.new('Claire') }
  subject(:chris) { Player.new('Chris') }

  describe '#name' do
    it 'returns the player name' do
      expect(claire.name).to eq 'Claire'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(claire.hitpoints).to eq described_class::HITPOINTS_DEFAULT
    end
  end

   describe '#damage' do
    it 'reduces the hit points of a player' do
      expect { claire.damage }.to change { claire.hitpoints }.by(-10)
    end
  end
 end