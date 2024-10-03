class Workout < ApplicationRecord
  belongs_to :program
  has_many :workout_entries

  validates :name, :day_of_week, :presence => true
end
