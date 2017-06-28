
#
# def look_up_product(input)
#   @products.each do |p|
#     if p[:id] == input.to_i
#       @shopping_cart << p
#     end
#   end
# end

# def continue_shopping
#   puts "Do you want to continue shopping?"
#   answer = gets.chomp
#   answer.upcase == 'Y'
# end
def present_products
  @products.each {|p| puts"#{p[:id]}. #{p[:name].capitalize} ($#{p[:price]})"}
  puts "What would you like to buy? (1-7)"
end

def select_products
  input = gets.chomp.to_i
  @products.each do |product|
    if product[:id] == input
      @shopping_cart << product
    end
  end
end

def present_cart
  puts "In your cart:"
  @shopping_cart.each {|product| puts "#{product[:id]}: #{product[:name].capitalize} ($#{product[:price]})"}
  # total_price = @shopping_cart.each {|product| total_price += product[:price]}
  # puts "Your total price is $#{total_price}."

end

@shopping_cart = []

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
present_products
select_products
present_cart
puts "Thanks for your visit!"
