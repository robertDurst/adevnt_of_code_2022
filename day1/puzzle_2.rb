answer = File.open("./input.txt") do |file|
  file
    .read
    .split("\n")
    .reduce({elves: [], current: 0}) do |sum, line|
      elves = sum[:elves]
      current = sum[:current]

      if line.empty?
        { elves: elves + [current], current: 0 }
      else
        { elves: elves, current: current + line.to_i }
      end
    end
end

puts "Answer: #{answer[:elves].sort.reverse[..2].sum}"
