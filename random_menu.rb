#Author: Christabel Sebastian
#Last updated: September 1, 2020
#Ada Developer's Academy C14
#Ada Assignment, "Random Menu": https://github.com/Ada-C14/random-menu
#sources: https://ruby-doc.org/core-2.7.1/Array.html
#Future modifications: (1) no repeat pulls from arrays when creating menu items (2) user-determined # of menu items < smallest array (3) user-input arrays.

#Methods
def check_input(user_input)
  until user_input == 'y' || user_input == 'n'
    user_input = gets.chomp.downcase
  end
  return user_input
end

#MAIN
adjectives = []
verbs = []
nouns = []


adjectives = []
puts "Welcome to Maison de Mad-Libs! Please enter an adjective: "
until adjective == 'q'
  adjective = gets.chomp.downcase
  if adjective != 'q'
    if adjective && !adjectives.include?(adjective)
      adjectives << adjective
    end
    puts "#{adjective} has been added to the list. Please add another adjective, or press 'q' to proceed."
  end
end

menu_items = Array.new
print "How many menu items would you like to see today? "
num_items = nil
until num_items
  num_items = gets.chomp.to_i
end

num_items.times do |i|
  menu_item = systems_adjectives.sample + " " + asian_foods.sample + "-" + desserts.sample
  menu_items << menu_item
  puts (i + 1).to_s + ". " + menu_item
end
