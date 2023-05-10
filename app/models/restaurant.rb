class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :delete_all

  validates :name, presence: true
  validates :address, presence: true
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, presence: true, inclusion: { in: CATEGORIES }

end
