class TapeEquilibrium
  def difference_after_split(array, split_point)
    left = array[0..split_point - 1].reduce(:+)
    right = array[split_point..-1].reduce(:+)
    ( left - right ).abs
  end

  def solution(a)
    min = Float::INFINITY
    all_split_points = Array(1..a.size-1)
    all_split_points.each do |split_point|
      puts difference_after_split(a, split_point)
      min = [difference_after_split(a, split_point), min].min
    end
    min
  end
end
