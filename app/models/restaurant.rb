class Restaurant < ApplicationRecord
  #if we delete this restaurant, this will delete the associated reviews
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :phone_number, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
