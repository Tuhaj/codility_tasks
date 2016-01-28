require_relative 'stone_wall'

describe StoneWall do
  it 'should return 7 for task test' do
    array = [8, 8, 5, 7, 9, 8, 7, 4, 8]
    expect(subject.solution(array)).to eql(7)
  end

  # it 'should return 1 for one level' do
  #   array = [5, 5, 5]
  #   expect(subject.solution(array)).to eql(1)
  # end
end
