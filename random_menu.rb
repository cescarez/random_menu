#Author: Christabel Sebastian
#Last updated: September 1, 2020
#Ada Developer's Academy C14
#Ada Assignment, "Random Menu": https://github.com/Ada-C14/random-menu
#sources:


systems_adjectives = ["Free-range", "Organic", "GMO-free", "Gluten-free", "Fair-trade", "Sugar-free", "Vegan", "Local", "In-season", "Keto-friendly"]
asian_foods = ["rice", "noodles", "bao", "curry", "egg-drop soup", "banh mi", "arroz caldo", "pad see ew", "dinuguan", "sushi"]
desserts = ["pie", "cake", "cupcake", "lollipop", "pudding", "ice cream", "cookie", "flan", "brownies", "cakepop"]

menu_items = Array.new

puts "Welcome to PDX Savory-Desserts! Here's what's on the menu:"

10.times do |i|
  menu_item = systems_adjectives.sample + " " + asian_foods.sample + "-" + desserts.sample
  menu_items << menu_item
  puts (i + 1).to_s + ". " + menu_item
end
