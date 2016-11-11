class User < ApplicationRecord
  belongs_to :group
  has_many :bets, through: :group
end
