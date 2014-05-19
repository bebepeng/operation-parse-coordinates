class CoordinateFinder
  def self.coordinates(input)
    lines = input.split("\n")[1..-2].map do |line|
      line[1..-2]
    end

    coord = []
    lines.each_with_index do |line, index|
      if line.include?('X')
        coord << line.index('X')
        coord << (index*-1)
      end
    end
    coord
  end
end