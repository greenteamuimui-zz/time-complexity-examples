def clever_n(array)
  ans = array[0]
  array.each do |fish|
    if ans[-1].length < fish.length
      ans = fish
    end
  end
  ans
end

def slug_nsqr(array)
  ans = array[0]
  array.each do |fish|
    array.each do |fish1|
    if fish.length < fish1.length
      ans = fish1
    end
    end
  end
  ans
end

def dom_nlogn(array)
  array.sort_by {|n| n.length}
end



fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

p slug_nsqr(fish)
p dom_nlogn(fish)
p clever_n(fish)
