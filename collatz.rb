def collatz_sequence(num)
  array_seq = []
  until num == 1
    if num%2 != 0
      num = num * 3 + 1
      array_seq.push(num)
    else
      num = num/2
      array_seq.push(num)
    end
  end
  return array_seq
end

def longest_sequence
  count = 1
  collatz_array = []
  until count == 1000000
    current_sequence = collatz_sequence (count)
    if current_sequence.length > current_longest.length
      current_longest = current_sequence
      count+=1
    else
      count+=1
    end
  end
  puts "This number is #{collatz_lengths[0]}. Sequence length is #{collatz_lengths.length}"
end

puts collatz_sequence(10)
puts longest_sequence