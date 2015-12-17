require_relative 'passing_cars'

describe PassingCars do
  it "should return number of passing cars, example test" do
    array = [0, 1, 0, 1, 1]
    expect(subject.solution(array)).to eql(5)
  end

  it "should return zero passing cars" do
    array = [1, 1, 1, 1, 1]
    expect(subject.solution(array)).to eql(0)
  end

  it "should return four passing cars" do
    array = [0, 1, 1, 1, 1]
    expect(subject.solution(array)).to eql(4)
  end

  it "should return passing cars for toggling group" do
    array = [0, 1, 0, 1, 0]
    expect(subject.solution(array)).to eql(3)
  end

  it "should return passing cars for toggling group" do
    array = [1, 2, 3, 4, 5]
    expect(subject.prefix_sums(array)).to eql([1, 3, 6, 10, 15] )
  end

  xit "should return -1 if number of passig cars is bigger than bilion" do
    array = [0] + Array.new(10**9, 1)
    expect(subject.solution(array)).to eql(-1)
  end
end
