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