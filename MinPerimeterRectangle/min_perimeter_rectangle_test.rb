require_relative "min_perimeter_rectangle"

describe MinPerimeterRectangle do
  it "should return min perimeter" do
    area = 30
    expect(subject.solution(area)).to eql(22)
  end

  it "should return min perimeter for square" do
    area = 16
    expect(subject.solution(area)).to eql(16)
  end

  it "should return min perimeter for prime number in area" do
    area = 17
    expect(subject.solution(area)).to eql(17 * 2 + 2)
  end
end
