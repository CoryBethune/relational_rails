require 'rails_helper'

RSpec.describe "links" do

  before (:each) do
    @studio1 = GameStudio.create!(name: 'SquareSoft', still_active: true, game_count: 10)
    @studio2 = GameStudio.create!(name: 'Bethesda', still_active: false, game_count: 20)
    @game = @studio1.games.create!(name: 'FFVII', still_in_production: true, hours_of_gameplay: 100)
    @game2 = Game.create!(name: 'Blah', still_in_production: false, hours_of_gameplay: 000)
  end

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

  it 'links to the show games by parent id page' do
    visit "/game_studios/#{@studio1.id}"

    click_link('Games of the Studio')

    expect(current_path).to eq("/game_studios/#{@studio1.id}/games")
  end

end
