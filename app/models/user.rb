class User < ApplicationRecord
  # take a look at rails has_secure_password and the bcrypt gem
  has_many :memberships, dependent: :destroy
  has_many :groups, through: :membership
  has_many :events, through: :groups
  has_many :bets, through: :winner
end
