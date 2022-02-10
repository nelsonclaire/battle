describe Player do
  describe '#name' do
    it 'returns the player name'do
      player = Player.new("Chris")
      expect(player.name).to eq("Chris")
    end
  end
end