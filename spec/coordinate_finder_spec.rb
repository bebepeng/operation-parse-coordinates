require 'coordinate_finder'

describe CoordinateFinder do
  it 'finds the origin' do
    input = <<CORD.strip
+==========+
|X*********|
|**********|
|**********|
|**********|
|**********|
+==========+
CORD
    cord = CoordinateFinder.coordinates(input)
    expect(cord).to eq [0, 0]
  end

  it 'finds the coordinates of a small plot' do
    input = <<CORD.strip
+======+
|******|
|******|
|*X****|
+======+
CORD
    cord = CoordinateFinder.coordinates(input)
    expect(cord).to eq [1, -2]
  end

  it 'finds the coordinates of a large plot' do
    input = <<CORD.strip
+===================================+
|***********************************|
|***********************************|
|***********************************|
|******X****************************|
|***********************************|
|***********************************|
|***********************************|
|***********************************|
+===================================+
CORD
    cord = CoordinateFinder.coordinates(input)
    expect(cord).to eq [6, -3]
  end

end