class Ingredient < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 2, maximum: 25}
  has_many :recipes_ingredients
  has_many :recipes, through: :recipes_ingredients
end