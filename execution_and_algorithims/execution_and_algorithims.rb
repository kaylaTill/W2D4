def my_min(list) 
  my_num = list.first

  list.each do |n|
    my_num = n if n < my_num
  end

  my_num
end
#Big-O(n)


def my_min_bad(list)
  list.each do |el1|
    count = 0
    list.each do |el2|
      count += 1 if el1 <= el2
    end
    return el1 if count == list.size
  end

end

#BigO(n^k)
#refer to as a placeholder(ex. n^k == n^2)
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min_bad(list)  # =>  -5

def largest_contigous_subsum(list2)
  sub_arrays = []


  list2.each_with_index do |el1, i|
    list2.each_with_index do |el2, j|
      if i < j # 0.. 1
      sub_arrays << list2[i..j].sum # [2,3]
      end
    end
  end
  sub_arrays.max
end
#n^k

list2 = [2, 3, -6, 7, -6, 7] # => 8
p largest_contigous_subsum(list2)

def better_contigous_subsum(list3)
  largest_sum = 0 
  current_sum = 0

  list3.each do |el|
    current_sum += el
    if current_sum > largest_sum
      largest_sum = current_sum
    end
    if current_sum < 0
      current_sum = 0
    end
  end
  largest_sum
end

list3 = [1,2,-4,3,1]
p better_contigous_subsum(list2)
 