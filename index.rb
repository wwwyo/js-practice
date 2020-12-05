


def search_order(num, array)

  length = array.length 
  left = 0
  right = length - 1
  while left <= right
    center = (left + right) /2
    if num == array[center]
      return center
    elsif num > array[center]
      left =  center + 1
    elsif num < array[center]
      right = center - 1
    end
  end
  return nil
end

def describe(num, order)
  if  order != nil
    puts "#{num}は配列の#{order}番目に存在します"
  else
    puts "値は配列内に存在しません"
  end
end



array=[1,3,5,6,9,10,13,20,26,31]
puts "検索したい数字を入力してください"
num = gets.to_i
order = search_order(num, array)
describe(num, order)


a = gets.to_i
b = gets.to_i

multiply = a * b
if multiply.even?
  puts "Even"
elsif multiply.odd?
  puts "Odd"
end