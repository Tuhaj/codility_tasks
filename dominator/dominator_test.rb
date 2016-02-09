require_relative 'dominator'

describe Dominator do
  it 'should return the number that occures more than half of the array' do
    array = [ 3, 4, 3, 2, 3, -1, 3, 3 ]
    expect(subject.solution(array)).to eql(0)
  end

  it 'should return -1 if there is no dominator' do
    array = [1,2,3,4]
    expect(subject.solution(array)).to eql(-1)
  end
end
