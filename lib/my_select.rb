def my_select(collection)
   new_array = []
    i=0
    while i<collection.length
      new_array.push yield(collection[i])
      i=i+1
    end
  new_array
end

my_select(nums) do |num|
  if num.even?
   num
  end
end