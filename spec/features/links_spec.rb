require 'rails_helper'

RSpec.describe "links" do
  it 'links to the games index' do
    visit '/game_studios'

    click_link("Games Index")

    expect(current_path).to eq("/games")
  end

end
