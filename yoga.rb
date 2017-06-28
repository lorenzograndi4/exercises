def select_product
  @products.each {|p| puts"#{p[:id]}. #{p[:name].capitalize} ($ #{p[:price]})"}
  puts "What would you like to buy? (1-7)"
  item[:id] = gets.chomp.to_i
  shopping_cart << item
  puts shopping_cart
end

shopping_cart = []

@products = [
  {id: 1, name: 'fork', price: 100},
  {id: 2, name: 'spoon', price: 45},
  {id: 3, name: 'knife', price: 77},
  {id: 4, name: 'chainsaw', price: 199},
  {id: 5, name: 'umbrella', price: 4},
  {id: 6, name: 'shoe1', price: 37},
  {id: 7, name: 'shoe2', price: 55}
]

puts "Welcome! Buy some of this:"
select_product
