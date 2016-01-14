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

require 'test_helper'

class RecipeItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
