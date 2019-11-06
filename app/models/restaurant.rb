class Restaurant < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :category, presence: true, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
  validates :address, presence: true

  has_many :reviews, dependent: :destroy
end
