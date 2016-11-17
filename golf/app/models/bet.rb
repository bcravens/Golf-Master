class Bet < ApplicationRecord
  belongs_to :course
  belongs_to :hole
  belongs_to :event
  has_many :users, through: :winners, dependent: :nullify
end
