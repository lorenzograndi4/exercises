# Define cart, depts and products

@shopping_cart = []
@total_price = 0
@departments = [:clothes, :kitchen, :garden, :books]
@products = {
  clothes: [
    { reference_number: 1231, name: "Tank top", price: 10 },
    { reference_number: 1232, name: "Shorts", price: 20 },
  ],
  kitchen: [
    { reference_number: 1233, name: "Glasses 6-pack", price: 30 },
    { reference_number: 1234, name: "Set of spoons", price: 30 },
  ],
  garden: [
    { reference_number: 1235, name: "Chainsaw", price: 200 },
    { reference_number: 1236, name: "Plastic grass", price: 300 },
  ],
  books: [
    { reference_number: 1237, name: "Bring Yoga To Life", price: 30 },
    { reference_number: 1238, name: "Light On Yoga", price: 10 },
  ]
}

# Methods
def present_depts
  @departments.each_with_index {|dept, index| puts "#{index + 1}) #{dept.capitalize}"}
end

def present_products
  input = gets.chomp.to_i
  @departments.each_with_index {|dept, index|  }
end
# Shopping flow

#loop do
  puts "Welcome to this expensive store! Which department would you like to go to? (1-4)"
  present_depts
  present_products
#end
