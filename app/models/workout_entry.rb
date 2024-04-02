class WorkoutEntry < ApplicationRecord
  belongs_to :workout
  belongs_to :exercise

  validates :reps, :sets, :weight, :presence => true
  validates :reps, :sets, :weight, :numericality => true
end
