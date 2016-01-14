# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string
#  nutrient   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  deleted_at :datetime
#

class Ingredient < ActiveRecord::Base
  acts_as_paranoid
  has_many :recipe_items, dependent: :destroy
  has_many :recipes, through: :recipe_items

  enum nutrient: { saturated_fat: 1, trans_fat: 2, sodium: 3, sugar: 4 }
end
