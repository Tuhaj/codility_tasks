class Fish
  def solution(a, b)
    fish_going_down = []
    alive = 0
    a.each_with_index do |fish, index|
      if b[index] == 1 # fish going downstream
        fish_going_down << fish
      else # fish going upstream
        if fish_going_down.empty?
          alive += 1
          next
        else
          while fish_going_down.size > 0 && fish_going_down.last < fish
            fish_going_down.pop
          end
        end
        alive += 1 if fish_going_down.empty?
      end
    end
    alive += fish_going_down.count
  end

end
