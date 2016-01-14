# == Schema Information
#
# Table name: recipe_items
#
#  id            :integer          not null, primary key
#  recipe_id     :integer
#  ingredient_id :integer
#  amount        :float            default(0.0), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  deleted_at    :datetime
#

class RecipeItem < ActiveRecord::Base
  acts_as_paranoid
  belongs_to :recipe
  belongs_to :ingredient

  validates :amount, presence: true

  scope :search_by_recipe, ->(recipe) { where(recipe_id: recipe.id) }
  scope :search_by_ingredient, ->(ingredient) { where(ingredient_id: ingredient.id) }
end
