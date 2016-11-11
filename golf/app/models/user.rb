class User < ApplicationRecord
  belongs_to :group, optional: :true
  has_many :bets, through: :group
end
