class User < ApplicationRecord
  has_many :user_programs
  has_many :programs, through: :user_programs
  has_many :workouts, through: :programs

  validates :name, :email, :height_inches, :body_weight, :presence => true
  validates :height_inches, :body_weight, :numericality => true
end
