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

require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
