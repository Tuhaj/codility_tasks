require_relative 'flags'

describe Flags do
  it "should find the number of flags that can be set on current trip" do
    array = [1, 5, 3, 4, 3, 4, 1, 2, 3, 4, 6, 2]
    expect(subject.solution(array)).to eql(3)
  end
end
