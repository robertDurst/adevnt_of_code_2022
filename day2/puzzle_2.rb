score = File.open("./input.txt") do |file|
    file
      .read
      .split("\n")
      .reduce(0) do |sum, line|
        elf, me = line.split(" ")

        sum += me == 'X' ? 0 :(me == 'Y' ? 3 : 6)

        case elf
        when 'A'
          case me
          when 'X'
            sum += 3
          when 'Y'
            sum += 1
          when 'Z'
            sum += 2
          end
        when 'B'
          case me
          when 'X'
            sum += 1
          when 'Y'
            sum += 2
          when 'Z'
            sum += 3
          end
        when 'C'
          case me
          when 'X'
            sum += 2
          when 'Y'
            sum += 3
          when 'Z'
            sum += 1
          end
        end

        sum
      end
  end

# 14416
puts "Answer: #{score}"

