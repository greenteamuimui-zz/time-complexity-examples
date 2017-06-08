def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |dir, idx|
    return idx if dir == direction
  end
end

def fast_dance(direction, new_tiles_data_structure)
  new_tiles_data_structure[direction]
end



tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
new_tiles_data_structure = Hash.new{|k,v| k[v]=v}
tiles_array.each_with_index { |tile, idx| new_tiles_data_structure[tile]=idx}

p slow_dance("up", tiles_array)

p slow_dance("right-down", tiles_array)

p fast_dance("up", new_tiles_data_structure)

p fast_dance("right-down", new_tiles_data_structure)
