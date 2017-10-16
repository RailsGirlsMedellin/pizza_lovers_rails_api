json.array! @pizzas do |pizza|
  json.id pizza.id
  json.name pizza.name
  json.ingredients pizza.ingredients
  json.image_url pizza.image_url
  json.votes pizza.votes.count
end

