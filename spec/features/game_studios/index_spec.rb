require 'rails_helper'

RSpec.describe GameStudio, type: :feature do

  before (:each) do
    @studio1 = GameStudio.create!(name: 'SquareSoft', still_active: true, game_count: 10)
    @studio2 = GameStudio.create!(name: 'Bethesda', still_active: false, game_count: 20)

  end


  it 'shows all the game studios' do
    visit '/game_studios'

    expect(page).to have_content(@studio1.name)
    expect(page).to have_content(@studio2.name)
  end
end
