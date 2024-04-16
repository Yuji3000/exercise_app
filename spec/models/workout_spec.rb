require 'rails_helper'

RSpec.describe Workout, type: :model do
  describe 'relationships' do
    it {should belong_to(:program)}
    it {should have_many(:workout_entries)}
  end

  describe 'validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:day_of_week)}
  end
end
