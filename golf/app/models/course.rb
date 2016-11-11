class Course < ApplicationRecord
  has_many :holes, dependent: :destroy
  validates :name, uniqueness: :true, presence: :true
end
