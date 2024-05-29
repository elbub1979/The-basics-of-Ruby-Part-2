# frozen_string_literal: true

months = {
  january: { number: 1, days: 31 },
  february: { number: 2, days: 28 },
  march: { number: 3, days: 31 },
  april: { number: 4, days: 30 },
  may: { number: 5, days: 31 },
  june: { number: 6, days: 30 },
  july: { number: 7, days: 31 },
  august: { number: 8, days: 31 },
  september: { number: 9, days: 30 },
  october: { number: 10, days: 31 },
  november: { number: 11, days: 30 },
  december: { number: 12, days: 31 }
}

puts "Enter the following data in order: date, month\nExample: 28 12 2004"

day, month, year = *gets.chomp.split(' ').map(&:to_i)

months[:february][:days] = 29 if (year % 400).zero? || (year % 4).zero? && year % 100 != 0

result = months.inject([]) { |accum, (_, value)| accum << value[:days] if value[:number] < month; accum }.sum + day

puts "Порядковый номер даты: #{result}"
