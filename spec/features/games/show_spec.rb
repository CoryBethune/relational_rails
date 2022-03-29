require 'rails_helper'

RSpec.describe Game, type: :feature do

  before (:each) do
    @studio1 = GameStudio.create!(name: 'SquareSoft', still_active: true, game_count: 10)
    @game1 = Game.create!(name: 'FFVII', still_in_production: true, hours_of_gameplay: 100)
    @game2 = Game.create!(name: 'FFX', still_in_production: false, hours_of_gameplay: 200)
  end

  it 'shows the games by id' do
    visit "/games/#{@game1.id}"

    expect(page).to have_content(@game1.name)
    expect(page).to have_content(@game1.still_in_production)
    expect(page).to have_content(@game1.hours_of_gameplay)
  end
end
