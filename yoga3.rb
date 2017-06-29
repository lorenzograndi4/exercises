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
  gets.chomp.to_i - 1
end

def present_products(dept_index)
  # @departments.each_with_index do |dept, index|
  #   puts "Let's go to the #{dept.capitalize} department then! Here is what you can select:" if (index + 1) == input
  # end
  department = @departments[dept_index]
  products = @products[department]

  puts "These are the products under the #{department.to_s.upcase} department:"
  products.each do |product|
    puts "Reference nr.: #{product[:reference_number]} #{product[:name]} #{product[:price]} EUR"
  end
end

# Shopping flow

#loop do
  puts "Welcome to this expensive store! Which department would you like to go to? (1-#{@departments.length})"
  dept_index = present_depts
  present_products(dept_index)
#end
