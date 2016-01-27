require_relative 'fish'

describe Fish do
  it 'should return array' do
    a = [4,3,2,1,5]
    b = [0, 1, 0, 0, 0]
    expect(subject.solution(a,b)).to eql(2)
  end
end
