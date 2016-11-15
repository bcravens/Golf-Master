class Group < ApplicationRecord
  has_many :bets, dependent: :destroy
  has_many :holes, through: :bets
  has_many :courses, through: :bets
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships, dependent: :nullify
end
