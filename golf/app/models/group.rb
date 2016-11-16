class Group < ApplicationRecord
  has_many :bets, through: :events, dependent: :destroy
  has_many :holes, through: :bets
  has_many :courses, through: :bets
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships, dependent: :nullify
  has_many :events
end
