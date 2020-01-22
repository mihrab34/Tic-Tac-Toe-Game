# ./spec/player_spec.rb

require_relative '../lib/player.rb'

RSpec.describe "Player" do
  describe '#initialize' do
    it 'Create user object without name as a parameter' do
    player = Player.new('X')

    expect(player.instance_variable_get(:@turn)).to eq('X')
    expect(player.name).to eq('Player X')
    end

    it 'Create user object with name as a parameter' do
    player = Player.new('O', 'Samuel')

    expect(player.instance_variable_get(:@turn)).to eq('O')
    expect(player.name).to eq('Samuel')
    end
  end
end