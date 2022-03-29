require 'rails_helper'

RSpec.describe Game, type: :feature do

  before (:each) do
    @studio1 = GameStudio.create!(name: 'SquareSoft', still_active: true, game_count: 10)
    @studio2 = GameStudio.create!(name: 'Bethesda', still_active: false, game_count: 20)
    @game = @studio1.games.create!(name: 'FFVII', still_in_production: true, hours_of_gameplay: 100)
  end

  # As a visitor
  # When I visit '/parents/:parent_id/child_table_name'
  # Then I see each Child that is associated with that Parent with each Child's attributes:

  it 'shows the game studios by id' do
    visit "/game_studios/#{@studio1.id}/games"

    expect(page).to have_content(@game.name)
    expect(page).to have_content(@game.still_in_production)
    expect(page).to have_content(@game.hours_of_gameplay)
  end
end