answer = File.open("./input.txt") do |file|
  file
    .read
    .split("\n")
    .reduce({largest: 0, current: 0}) do |sum, line|
      largest = sum[:largest]
      current = sum[:current]

      if line.empty?
        { largest: [largest, current].max, current: 0 }
      else
        { largest: largest, current: current + line.to_i }
      end
    end
end

puts "Answer: #{answer[:largest]}"

