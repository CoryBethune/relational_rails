require 'rails_helper'

RSpec.describe Game, type: :feature do

  before (:each) do
    @studio1 = GameStudio.create!(name: 'SquareSoft', still_active: true, game_count: 10)
    @studio2 = GameStudio.create!(name: 'Bethesda', still_active: false, game_count: 20)
    @game = @studio1.games.create!(name: 'FFVII', still_in_production: true, hours_of_gameplay: 100)
    @game2 = Game.create!(name: 'Blah', still_in_production: false, hours_of_gameplay: 000)
  end

  it 'shows the game studios by id' do
    visit "/game_studios/#{@studio1.id}/games"
    
    expect(page).to have_content(@game.name)
    expect(page).to have_content(@game.still_in_production)
    expect(page).to have_content(@game.hours_of_gameplay)
    expect(page).to have_no_content(@game2)

  end
end
