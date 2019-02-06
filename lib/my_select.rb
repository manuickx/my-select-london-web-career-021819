def my_select(collection)
   new_array = []
    i=0
    while i<collection.length
      new_array.push yield(collection[i])
      i=i+1
    end
  new_array.compact
end

list = [1,2,3,4,5]

my_select(list) do |num|
  if num.even?
   num
  end
end