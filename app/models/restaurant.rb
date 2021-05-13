class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  COLLECT = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: COLLECT }, presence: true
end
