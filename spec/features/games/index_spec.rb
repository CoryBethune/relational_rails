require 'rails_helper'

RSpec.describe Game, type: :feature do

  before (:each) do
    @studio1 = GameStudio.create!(name: 'SquareSoft', still_active: true, game_count: 10)
    @game1 = Game.create!(name: 'FFVII', still_in_production: true, hours_of_gameplay: 100)
    @game2 = Game.create!(name: 'FFX', still_in_production: false, hours_of_gameplay: 200)

  end

  it 'shows all the game studios' do
    visit '/games'

    expect(page).to have_content(@game1.name)
    expect(page).to have_content(@game2.name)
  end
end
