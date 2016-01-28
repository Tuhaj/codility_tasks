class Fish
  def solution(a, b)
    fish_going_down = []
    alive = 0
    a.each_with_index do |fish, index|
      # fish going downstream
      ( fish_going_down << fish; next ) if b[index] == 1
      # fish going upstream
      ( alive += 1; next ) if fish_going_down.empty?
      removes_all_smaller_form_tail(fish_going_down, fish)
      alive += 1 if fish_going_down.empty? # the upstream fish which ate all
    end
    alive += fish_going_down.count
  end

  def removes_all_smaller_form_tail(array, limit)
    # array.reverse.drop_while{ |n| n < limit }.reverse # this doesn't work!
    while array.size > 0 && array.last < limit
      array.pop
    end
    array
  end

end

