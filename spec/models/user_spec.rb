require "rails_helper"

RSpec.describe User, type: :model do
  describe 'relationships' do
    it {should have_many(:body_weights)}
    it {should have_many(:workouts)}
  end

  describe 'validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:email)}
    it {should validate_presence_of(:height_inches)}
  end
end