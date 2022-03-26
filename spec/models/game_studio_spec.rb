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
end
