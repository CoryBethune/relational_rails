require 'rails_helper'

RSpec.describe GameStudio, type: :feature do

  before (:each) do
    @studio1 = GameStudio.create!(name: 'SquareSoft', still_active: true, game_count: 10)
    @studio2 = GameStudio.create!(name: 'Bethesda', still_active: false, game_count: 20)
  end

  it 'shows the game studios by id' do
    visit "/game_studios/#{@studio1.id}"

    expect(page).to have_content(@studio1.name)
    expect(page).to have_content(@studio1.still_active)
    expect(page).to have_content(@studio1.game_count)
    expect(page).to have_content(@studio1.updated_at)
    expect(page).to have_content(@studio1.created_at)

  end
end
