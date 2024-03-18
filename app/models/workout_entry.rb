class WorkoutEntry < ApplicationRecord
  belongs_to :exercise
  belongs_to :workout
  validates :reps, :sets, :weight_lbs, :presence => true
  validates :reps, :sets, :weight_lbs, :numericality => true
end