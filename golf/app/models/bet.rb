class Bet < ApplicationRecord
  belongs_to :hole
  belongs_to :group
end
