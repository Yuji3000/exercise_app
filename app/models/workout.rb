class Workout < ApplicationRecord
  belongs_to :program

  validates :name, :day_of_week, :notes, :presence => true
end
