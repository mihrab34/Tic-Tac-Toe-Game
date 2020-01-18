# ./spec/player_spec.rb

require_relative '../lib/player.rb'

RSpec.describe "Player" do
    let(:player) {Player.new('player1')} 
    describe "#name" do
      it "returns name of player" do
        expect(player.name).to eq('player1')
      end
    end

    describe "#initialize" do
        it "initialize a value with '' by default" do
          expect(Player.new(player)).to eq('player')
        end
    end    
end
