# frozen_string_literal: true

vowels_arr = %w[a e i o u]

vowels_hash = vowels_arr.inject({}) { |accum, char| accum[char] = char.ord - 96; accum }

puts vowels_hash
