require_relative 'min_avg_two_slice'

describe MinAvgTwoSlice do
  it "should return the begining index of the smallest slice" do
    array = [4, 2, 2, 5, 1, 5, 8]
    expect(subject.solution(array)).to eql(1)
  end

  it "should return the begining of min avg slice for small array" do
    array = [5, 6, 3, 4, 9]
    expect(subject.solution(array)).to eql(2)
  end
end
