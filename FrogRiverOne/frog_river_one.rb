class FrogRiverOne

# https://codility.com/media/train/2-CountingElements.pdf
  def counting_elements(array)
    # generates meta-array
    # index - value of the array
    # value - times the value occures
    n = array.size
    m = array.max
    count = [0] * (m + 1)
    Array(0..n-1).each do |index|
      count[array[index]] += 1
    end
    count
  end

  def solution(x, array)
    seconds = 0
    needed_leaves = [0] * ( x + 1 )
    array.each_with_index do |leaf, time|
      if needed_leaves[leaf] == 0
        needed_leaves[leaf] = 1
        seconds += 1
        return time if seconds == x
      end
    end
    -1
  end
end
