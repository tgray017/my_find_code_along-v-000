require 'pry'

def my_find(collection)
  i = 0
  array = []
  while i < collection.length
    array << yield(collection[i])
  end
  if array.length > 0
    array[0]
  else
    nil
  end
end

collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 && i % 5 == 0 }