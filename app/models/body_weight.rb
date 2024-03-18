class BodyWeight < ApplicationRecord
  belongs_to :user

  validates :lbs, :presence => true
  validates :lbs, :numericality => true

  
end