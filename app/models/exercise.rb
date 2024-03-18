class Exercise < ApplicationRecord
  has_many :workout_entries

  validates :name, :description, :presence => true
end