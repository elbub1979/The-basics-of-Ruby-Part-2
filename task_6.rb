purchases = {}
puts "Enter the name of the product, its cost per unit and quantity\nExample: apple 100 15\nTo exit, press e"

loop do
  purchase_array = gets.chomp.split(' ')
  break if purchase_array[0] == 'e'

  name = purchase_array[0]
  cost = purchase_array[1]
  quantity = purchase_array[2]

  purchases[name.to_sym] = { cost: cost.to_i, quantity: quantity.to_i }
end

total_cost = 0

result = purchases.each_with_object('') do |(key, value), accum|
  accum << "#{key.capitalize}, quantity: #{value[:quantity]}, cost per unit: #{value[:cost]}, the total cost: #{value[:quantity] * value[:cost]}\n"
  total_cost += value[:cost]
end

puts 'You have purchased:'
puts result
puts "Всего: #{total_cost}"


