json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :nutrient
  json.url ingredient_url(ingredient, format: :json)
end
