#Author: Christabel Sebastian
#Last updated: September 1, 2020
#Ada Developer's Academy C14
#Ada Assignment, "Random Menu": https://github.com/Ada-C14/random-menu
#sources:


sytems_adjectives = ["free-range", "organic", "gmo-free", "gluten-free", "fair-trade", "sugar-free", "vegan", "local", "in-season", "keto-friendly"]
meal_adjectives = ["candied", "chocolatey", "bright", "rich", "umami", "sweet", "savory", "delicate", "bold", "complex"]
asian_foods = ["rice", "noodles", "bao", "curry", "egg-drop soup", "banh mi", "arroz caldo", "pad see ew", "dinuguan", "sushi"]
desserts = ["pie", "cake", "cupcake", "lollipop", "pudding", "ice cream", "cookie", "flan", "brownies", "cakepop"]

menu_items = Array.new

10.times do |i|
  menu_item = sytems_adjectives.sample + ", " + meal_adjectives.sample + ", " + asian_foods.sample + ", " + desserts.sample
  menu_items << menu_item
  puts (i + 1) + ". " + menu item
end