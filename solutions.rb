# merge two sorted arrays
# parameters are left, a sorted array
# and right, a sorted array
# all elements from both arrays must be comparable

# can you find a more ruby-esque solution?

def merge(arr1, arr2)
  #check if there are any non numbers in either array
    return nil if !(arr1.all? { |num| num.is_a? Numeric })
    return nil if !(arr2.all? { |num| num.is_a? Numeric })

  # set up a results array
  sorted_arr = []
  #measure the length of each array
  len1 = arr1.length
  len2 = arr2.length
  #set up a counter for each array
  i = 0
  j = 0

  #loop stops when one array is checked fully
  while i < len1 && j < len2
    #compare values of array 1 and array 2
    if arr1[i] <= arr2[j]
      #if value in array 1 is less, push it
      sorted_arr << arr1[i]
      #increment counter
      i += 1
    else
      sorted_arr << arr2[j]
      j += 1
    end
  end

  #are there are remaining items in either array?
  #if so push the remaining item of one into final sorted array
  if i < len1
    sorted_arr += arr1[i..-1]
  else
    sorted_arr += arr2[j..-1]
  end
  # implicit return
  sorted_arr
end
