#Author: Christabel Sebastian
#Last updated: September 1, 2020
#Ada Developer's Academy C14
#Ada Assignment, "Random Menu": https://github.com/Ada-C14/random-menu
#sources: https://ruby-doc.org/core-2.7.1/Array.html
#Future modifications: (1) improve the input check for nil.integers 

#Methods
def build_array(array)
  entry = nil
  until entry == 'Q' && array.length > 0
    entry = gets.chomp.upcase
    #check for empty inputs, or integer inputs
    while entry.strip == "" || entry.to_i != 0 || entry.to_s == '0'
      puts "Invalid input. Please reenter."
      entry = gets.chomp.upcase
    end
    #execute if no exit flag
    if entry != 'Q'
      if entry && !array.include?(entry)
        array << entry
      end
      puts "#{entry} has been added to the list. Please add another entry, or press 'q' to proceed."
    end
    #if exit flag, but array is empty, prompt for additional input
    if array.length == 0
      puts "You must input at least one entry."
    end
  end
end

def extract_element(array)
  element = array.sample
  array.delete(element)
  return element
end

#MAIN
adjectives = []
puts "Welcome to Maison de Mad-Libs! Please enter an ADJECTIVE: "
build_array(adjectives)


verbs = []
puts "Please enter a VERB: "
build_array(verbs)


nouns = []
puts "Please enter a NOUN: "
build_array(nouns)

max_menu_items = [adjectives.length, verbs.length, nouns.length].min

num_items = 0
print "How many menu items would you like to see today? "
until (num_items > 0) && (num_items <= max_menu_items)
  num_items = gets.chomp.to_i
  while num_items > max_menu_items
    print "Please enter a number less than #{max_menu_items + 1}: "
    num_items = gets.chomp.to_i
  end
end

menu_items = []
puts "Today's menu at Maison de Mad Libs is: "
num_items.times do |i|
  adjective = extract_element(adjectives)
  verb = extract_element(verbs)
  noun = extract_element(nouns)
  menu_item = adjective + " " + verb + " " + noun
  menu_items << menu_item
  puts (i + 1).to_s + ". " + menu_item
end