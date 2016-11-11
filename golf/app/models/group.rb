class Group < ApplicationRecord
  has_many :bets
  has_many :holes, through: :bets
  has_many :users
end
