class CreateRecipeItems < ActiveRecord::Migration
  def change
    create_table :recipe_items do |t|
      t.references :recipe, index: true, foreign_key: true
      t.references :ingredient, index: true, foreign_key: true
      t.float :amount, default: 0.0, null: false

      t.timestamps null: false
      t.datetime :deleted_at
    end
  end
end
