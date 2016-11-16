class Bet < ApplicationRecord
  belongs_to :course
  belongs_to :hole
  belongs_to :event
end
