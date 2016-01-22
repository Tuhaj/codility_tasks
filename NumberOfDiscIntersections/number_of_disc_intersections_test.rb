require_relative 'number_of_disc_intersections'

describe NumberOfDiscIntersections do
  it 'should return all intersections between circles' do
    array = [1, 5, 2, 1, 4, 0]
    expect(subject.solution(array)).to eql(11)
  end

  it 'should return all intersections between circles with different array' do
    array = [0, 0, 1, 2, 0, 3]
    expect(subject.solution(array)).to eql(7)
  end

  it 'should return 0 for single array' do
    array = [10]
    expect(subject.solution(array)).to eql(0)
  end

  it 'should return 1 for array' do
    array = [1,3]
    expect(subject.solution(array)).to eql(1)
  end

  it 'should return 0 for empty array' do
    array = []
    expect(subject.solution(array)).to eql(0)
  end

  it 'should return 2 for strange array' do
    array = [1, 2147483647, 0]
    expect(subject.solution(array)).to eql(2)
  end

end
