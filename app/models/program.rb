class Program < ApplicationRecord
  has_many :workouts
  has_many :workout_entries, through: :workouts


  validates :name, :description, :presence => true
end
