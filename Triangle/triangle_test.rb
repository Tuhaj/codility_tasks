require_relative 'triangle'

describe Triangle do
  it 'should return 1 for existing triangle triplet in array' do
    array = [10, 2, 5, 1, 8, 20]
    expect(subject.solution(array)).to eql(1)
  end

  it 'should return 0 for non-existing triangle triplet in array' do
    array =  [10, 50, 5, 1]
    expect(subject.solution(array)).to eql(0)
  end

  it 'should return 0 for not big enough arrays' do
    array = [1, 2]
    expect(subject.solution(array)).to eql(0)
    array = []
    expect(subject.solution(array)).to eql(0)
    array = [1]
    expect(subject.solution(array)).to eql(0)
  end

  it 'should be able to deal with negative numbers' do
    array = [-3, -4, -5]
    expect(subject.solution(array)).to eql(0)
  end

  it 'should not allow 180 degrees triangles like 1 1 2' do
    array = [1, 1, 2, 3, 5]
    expect(subject.solution(array)).to eql(0)
  end

  it 'checks if numbers are in triangle condition' do
    expect(subject.is_in_triangle_condition(3,4,5)).to eql(true)
    expect(subject.is_in_triangle_condition(4,4,10)).to eql(false)
    expect(subject.is_in_triangle_condition(40,30,30)).to eql(true)
  end
end
