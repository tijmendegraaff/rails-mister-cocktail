class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, :ingredient_id, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
