def my_select(collection)
   new_array = []
    i=0
    while i<collection.length
      new_array.push yield(collection[i])
      i=i+1
    end
  new_array.compact
end

nums = [1,2,3,4,5]

my_select(nums) do |num|
  if num.even?
   num
  end
end