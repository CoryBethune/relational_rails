require 'rails_helper'

RSpec.describe GameStudio, type: :model do
  describe "relationships" do
    it { should have_many :games}
  end

  describe "validations" do
    it { should validate_presence_of :name}
    it { should validate_presence_of :game_count}
    it { should allow_value(true).for(:still_active)}
    it { should allow_value(false).for(:still_active)}
  end

  describe 'class methods' do
    it 'sorts all the data by most recently created at value' do
      @studio1 = GameStudio.create!(name: 'SquareSoft', still_active: true, game_count: 10, created_at: '1999-03-01')
      @studio2 = GameStudio.create!(name: 'Bethesda', still_active: false, game_count: 20, created_at: '2001-01-19')

      expect(GameStudio.sort_by_created_at).to eq([@studio2, @studio1])
    end
  end

  describe 'instance methods' do

  end
end
