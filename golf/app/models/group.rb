class Group < ApplicationRecord
  has_many :bets, dependent: :destroy
  has_many :holes, through: :bets
  has_many :memberships
  has_many :users, through: :memberships, dependent: :nullify
  validates_associated :users, uniqueness: true
end
