require '../common/input_reader'

class Day1_Puzzle1 < InputReader
  def self.call
    new.call
  end

  def call
    accumulate(input_file_path: "./input.txt", base: { largest: 0, current: 0 })
  end

  def accumulator(value)
    sum = value[:sum]
    line = value[:line]

    largest = sum[:largest]
    current = sum[:current]

    if line.empty?
      { largest: [largest, current].max, current: 0 }
    else
      { largest: largest, current: current + line.to_i }
    end
  end
end

answer = Day1_Puzzle1.call

# 74198
puts "Answer: #{answer[:largest]}"

