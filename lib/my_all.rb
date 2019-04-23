require 'pry'

def my_all?(collection)
  i = 0
  
  while i < collection.length
    break if yield(collection[i]) == false
    i += 1
  end
  
end