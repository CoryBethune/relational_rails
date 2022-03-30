require 'rails_helper'

RSpec.describe "links" do
  it 'links to the games index' do
    visit '/game_studios'

    click_link("Games Index")

    expect(current_path).to eq("/games")
  end

  it 'links to the game studios index' do
    visit '/games'

    click_link('Game Studio Index')

    expect(current_path).to eq('/game_studios')
  end

end
