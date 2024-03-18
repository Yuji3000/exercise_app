class User < ApplicationRecord
  has_many :body_weights
  has_many :workouts
  validates :name, :email, :height_inches, :presence => true
  validates :height_inches, :numericality => true
end