# frozen_string_literal: true

require_relative 'lib/linked_list'

list = LinkedList.new

list.append('cat')
list.append('parrot')
list.append('snake')
list.append('turtle')
list.prepend('dog')
list.insert_at('hamster', 3)

puts "This is the linked list:\n#{list}"
puts "The head node is: #{list.head}"
puts "The tail node is: #{list.tail}"
puts "There are #{list.size} nodes in this list.\n\n"

i = 2 
item = list.remove_at(i)
puts "I removed the item at index #{i} (which is the #{item}) so the linked list now looks like this:\n#{list}"
puts "The new item at index #{i} now is the #{list.at(i)}\n\n"

request1 = 'turtle'
request2 = 'tiger'
puts "Does the list contain a #{request1}? => #{list.contains?(request1)}"
puts "It is at index #{list.find(request1)}"
puts "Does the list contain a #{request2}? => #{list.contains?(request2)}\n\n"

puts "Remember the linked list currently looks like this:\n#{list}"
item = list.pop
puts "I just called the pop method, so the #{item} is removed, the tail is now #{list.tail} and the new list looks like this:\n#{list}"

