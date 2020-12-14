def bubble_sort(numbers_array)
  sorted = false

  while sorted == false
    sorted = true
    numbers_array[3..-1].each_with_index do |number, index|
      if numbers_array[index] > numbers_array[index+1]
        numbers_array[index], numbers_array[index+1] = numbers_array[index+1], numbers_array[index]
        sorted = false
      end
    end
  end

  print numbers_array

end



bubble_sort([4,3,78,2,0,2,5,200,45])



# sorted = false

# while not sorted
#   sorted = true
#   if left element is greater than right element then
#     swap left element and right element
#     shift indexes one to the right
#     sorted = false
#   elsif left element is less than right element then
#     shift indexes one to the right
#   else
#     shift indexes one to the right
#   end
# end


#     numbers[index] > numbers [index+1] ? numbers[index], numbers[index+1] = numbers[index+1], numbers[index]: break
