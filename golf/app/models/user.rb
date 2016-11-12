class User < ApplicationRecord
  has_many :memberships
  has_many :groups, through: :membership
  has_many :bets, through: :group
end
