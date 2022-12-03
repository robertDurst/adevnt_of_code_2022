lines = File.open("./input.txt") do |file|
  file
    .read
    .split("\n")
end

i = 0

all_badges = []
while i < lines.length
  line_1 = lines[i]
  line_2 = lines[i+1]
  line_3 = lines[i+2]

  line_1_unique = {}
  line_1.split("").each{ |letter| line_1_unique[letter] = true }

  line_1_and_line_2 = {}
  line_2.split("").each{ |letter| line_1_and_line_2[letter] = true if line_1_unique[letter] }

  line_1_and_line_2_and_line_3 = {}
  line_3.split("").each{ |letter| line_1_and_line_2_and_line_3[letter] = true if line_1_and_line_2[letter] }

  all_badges << line_1_and_line_2_and_line_3.first[0]

  i += 3
end

# 2609
puts "Answer: #{all_badges.map(&:ord).map{|letter| letter < 91 ? letter % 65 + 27: letter % 97 + 1}.sum}"
