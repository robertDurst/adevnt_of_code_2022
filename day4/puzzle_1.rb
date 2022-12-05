def contains?(a, b)
  a_start, a_end = a.split("-")
  b_start, b_end = b.split("-")

  a_start.to_i <= b_start.to_i && a_end.to_i >= b_end.to_i
end

answer = File.open("./input.txt") do |file|
  file
    .read
    .split("\n")
    .reduce(0) do |sum, line|
      right, left = line.split(",")

      sum += 1 if contains?(right, left) || contains?(left, right)

      sum
    end
end

# 503
puts "Answer: #{answer}"
