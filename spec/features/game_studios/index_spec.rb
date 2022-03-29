require 'rails_helper'

RSpec.describe GameStudio, type: :feature do

  before (:each) do
    @studio1 = GameStudio.create!(name: 'SquareSoft', still_active: true, game_count: 10)
    @studio2 = GameStudio.create!(name: 'Bethesda', still_active: false, game_count: 20)
    @game1 = @studio1.games.create!(name: 'FFVII', still_in_production: true, hours_of_gameplay: 100)
    sleep 1
    @game2 = @studio1.games.create!(name: 'FFX', still_in_production: false, hours_of_gameplay: 200)
  end


  it 'shows all the game studios' do
    visit '/game_studios'

    expect(page).to have_content(@studio1.name)
    expect(page).to have_content(@studio2.name)
  end

  it 'shows and sorts the games by most recently created' do
    visit '/game_studios'

    expect(@studio2.name).to appear_before(@studio1.name)
  end


end
