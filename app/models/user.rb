class User < ApplicationRecord
  has_many :user_programs

  validates :name, :email, :height_inches, :body_weight, :presence => true
  validates :height_inches, :body_weight, :numericality => true
end
