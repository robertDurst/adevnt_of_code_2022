answer = File.open("./input.txt") do |file|
  file
    .read
    .split("\n")
    .reduce([]) do |sum, line|
      first_half = {}
      splitted_line = line.split("")
      mid_point = splitted_line.size / 2

      splitted_line.each_with_index do |letter, iteration|
        if iteration >= mid_point
          if first_half[letter]
            sum += [letter]
            break
          end
        else
          first_half[letter] = true
        end
      end

      sum
    end
end

# 7727
puts "Answer: #{answer.map(&:ord).map{|letter| letter < 91 ? letter % 65 + 27: letter % 97 + 1}.sum}"
