require_relative 'missing_integer'

describe MissingInteger do
  it "should return missing integer" do
    array = [1, 3, 6, 4, 1, 2]
    expect(subject.solution(array)).to eql(5)
  end
end
