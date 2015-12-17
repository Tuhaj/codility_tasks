require_relative 'max_counters'

describe MaxCounters do
  it "should return max counters according to prescription" do
    array = [3, 4, 4, 6, 1, 4, 4]
    expected_array =  [3, 2, 2, 4, 2]
    expect(subject.solution(5, array)).to eql(expected_array)
  end

  it "for small array returns expected outcome" do
    array = [3, 3]
    expected_array =  [0, 0, 2]
    expect(subject.solution(3, array)).to eql(expected_array)
  end

  it "for single element array returns expected outcome" do
    array = [3]
    expected_array =  [0, 0]
    expect(subject.solution(2, array)).to eql(expected_array)
  end

  it "all max counters" do
    array = [6, 6, 6, 6]
    expected_array =  [0, 0, 0, 0, 0]
    expect(subject.solution(5, array)).to eql(expected_array)
  end
end
