require 'pry'

def my_find(collection)
  i = 0
  array = []
  while i < collection.length
    array << yield(collection[i])
    i += 1 
  end
  array.any?
end

collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 && i % 5 == 0 }