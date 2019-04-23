require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i += 1
  end
  block_return_values.include?(false) ? false : true
end


# ALTERNATE VERSION
# def my_all?(collection)
#   i = 0
  
#   while i < collection.length
#     return false if yield(collection[i]) == false
#     i += 1
#   end
#   true
# end