class Ingredient < ApplicationRecord
  has_attachment :photo
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, presence: true, uniqueness: true
end
