#Author: Christabel Sebastian
#Last updated: September 1, 2020
#Ada Developer's Academy C14
#Ada Assignment, "Random Menu": https://github.com/Ada-C14/random-menu
#sources:


systems_adjectives = ["Free-range", "Organic", "GMO-free", "Gluten-free", "Fair-trade", "Sugar-free", "Vegan", "Local", "In-season", "Keto-friendly"]
asian_foods = ["rice", "noodles", "bao", "curry", "egg-drop soup", "banh mi", "arroz caldo", "pad see ew", "dinuguan", "sushi"]
desserts = ["pie", "cake", "cupcake", "lollipop", "pudding", "ice cream", "cookie", "flan", "brownies", "cakepop"]

menu_items = Array.new

print "Welcome to PDX Savory-Desserts! How many menu items would you like to see today? "
num_items = nil
until num_items
  num_items = gets.chomp.to_i
end

num_items.times do |i|
  menu_item = systems_adjectives.sample + " " + asian_foods.sample + "-" + desserts.sample
  menu_items << menu_item
  puts (i + 1).to_s + ". " + menu_item
end
