class Group < ApplicationRecord
  has_many :bets, dependent: :destroy
  has_many :holes, through: :bets
  has_many :users
end
