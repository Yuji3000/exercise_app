require "rails_helper"

RSpec.describe WorkoutEntry, type: :model do
  describe 'relationships' do
    it {should belong_to(:exercise)}
    it {should belong_to(:workout)}
  end

  describe 'validations' do
    it {should validate_presence_of(:reps)}
    it {should validate_presence_of(:sets)}
    it {should validate_presence_of(:weight_lbs)}
  end
end