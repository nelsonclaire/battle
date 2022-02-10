require 'player'

describe Player do
  subject(:player) { described_class.new("Claire") }
  describe '#name' do
    it 'returns the player name'do
      expect(player.name).to eq("Claire")
    end
  end
end