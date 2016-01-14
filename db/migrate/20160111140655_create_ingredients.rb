class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :nutrient

      t.timestamps null: false
      t.datetime :deleted_at
    end
  end
end
