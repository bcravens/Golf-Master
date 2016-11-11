class Hole < ApplicationRecord
  belongs_to :course
  has_many :bets
  has_many :groups, through: :bets
end
