class Course < ApplicationRecord
  has_many :holes, dependent: :destroy
  has_many :bets
  validates :name, uniqueness: :true, presence: :true
end
