class Event < ApplicationRecord
  belongs_to :group
  belongs_to :course
  has_many :holes
  has_many :bets
end
