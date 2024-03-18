class Workout < ApplicationRecord
  belongs_to :program
  belongs_to :user

  validates :name, :day_of_week, :presence => true
end