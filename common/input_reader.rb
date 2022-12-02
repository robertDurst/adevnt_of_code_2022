# seems like we read input files most of the time, so here's to that 🥂
class InputReader
  def accumulate(input_file_path:, base:, &block)
    File
      .read(input_file_path).split("\n")
      .reduce(base) { |sum, line| accumulator ({ line: line, sum: sum }) }
  end
end
