score = File.open("./input.txt") do |file|
  file
    .read
    .split("\n")
    .reduce(0) do |sum, line|
      elf, me = line.split(" ")

      sum += me == 'X' ? 1 :(me == 'Y' ? 2 : 3)

      if (elf == 'A' && me == 'X') || (elf == 'B' && me == 'Y') || (elf == 'C' && me == 'Z')
        sum += 3
      elsif (elf == 'A' && me == 'Y') || (elf == 'B' && me == 'Z') || (elf == 'C' && me == 'X')
        sum += 6
      end

      sum
    end
end

# 15632
puts "Answer: #{score}"

