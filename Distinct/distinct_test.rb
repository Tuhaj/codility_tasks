require_relative 'distinct'

describe Distinct do
  it 'should return all distinct values in array' do
    array = [2, 1, 1, 2, 3, 1]
    expect(subject.solution(array)).to eql(3)
  end

  it 'should return all distinct values in a different array' do
    array = [4, 2, 1, 1, 2, 3, 1, 1000]
    expect(subject.solution(array)).to eql(5)
  end
end
