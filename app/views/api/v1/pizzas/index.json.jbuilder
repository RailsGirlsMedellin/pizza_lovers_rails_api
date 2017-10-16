json.array! @pizzas do |piza|
  json.id piza.id
  json.name pizza.name
  json.ingredients pizza.ingredients
  json.votes.count pizza.votes.count
end

