# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  title        :string           not null
#  instructions :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  deleted_at   :datetime
#

class Recipe < ActiveRecord::Base
  acts_as_paranoid
  has_many :ingredients, through: :recipe_items
  has_many :recipe_items, dependent: :destroy
  accepts_nested_attributes_for :recipe_items, allow_destroy: true

  validates :title, presence: true
  validates :instructions, presence: true
end
