class Program < ApplicationRecord
  has_many :workouts
  
  validates :name, :description, :presence => true
end