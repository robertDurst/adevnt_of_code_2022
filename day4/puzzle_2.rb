def overlap?(right, left)
  right_start, right_end = right.split("-")
  left_start, left_end = left.split("-")

  !(right_start.to_i > left_end.to_i || right_end.to_i < left_start.to_i)
end

answer = File.open("./input.txt") do |file|
  file
    .read
    .split("\n")
    .reduce(0) do |sum, line|
      right, left = line.split(",")

      sum += 1 if overlap?(right, left)

      sum
    end
end



# 827
puts "Answer: #{answer}"
