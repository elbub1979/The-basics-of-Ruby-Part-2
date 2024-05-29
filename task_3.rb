# frozen_string_literal: true

number = 0

puts 'Введите количество элементов для массива с числами Фибоначчи'

loop do
  number = gets.to_i - 2
  break unless number.negative?

  puts 'Последовательность не может быть менее 2 элементов'
end

array = [0, 1]

1.upto(number) do |_|
  array << array[-1] + array[-2]
end

puts array
