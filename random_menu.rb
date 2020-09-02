#Author: Christabel Sebastian
#Last updated: September 1, 2020
#Ada Developer's Academy C14
#Ada Assignment, "Random Menu": https://github.com/Ada-C14/random-menu
#sources: https://ruby-doc.org/core-2.7.1/Array.html
#Future modifications: (1) no repeat pulls from arrays when creating menu items (2) user-determined # of menu items < smallest array (3) user-input arrays.

#Methods
def build_array(array)
  entry = ""
  until entry == 'q'
    entry = gets.chomp.downcase
    if entry != 'q'
      if entry && !array.include?(entry)
        array << entry
      end
      puts "#{entry} has been added to the list. Please add another entry, or press 'q' to proceed."
    end
  end
end

#MAIN
adjectives = []
puts "Welcome to Maison de Mad-Libs! Please enter an adjective: "
build_array(adjectives)


verbs = []
puts "Please enter a verb: "
build_array(verbs)


nouns = []
puts "Please enter a noun: "
build_array(nouns)

# if adjectives.length <= verbs.length && adjectives.length <= nouns.length
#   max_menu_items = adjectives.length
# elsif verbs.length <= adjectives.length && verbs.length <= nouns.length
#   max_menu_items = verbs.length
# else
#   max_menu_items = nouns.length
# end

max_menu_items = [adjectives.length, verbs.length, nouns.length].min

menu_items = []
print "How many menu items would you like to see today? "
num_items = nil
until num_items
  num_items = gets.chomp.to_i
  if num_items > max_menu_items
    puts "Please enter a number less than #{max_menu_items}."
  end
end

num_items.times do |i|
  menu_item = adjectives.sample + " " + verbs.sample + "-" + nouns.sample
  menu_items << menu_item
  puts (i + 1).to_s + ". " + menu_item
end
