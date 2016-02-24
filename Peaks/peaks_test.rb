require_relative "peaks"

describe Peaks do
  it "should return correct solution" do
    array = [ 1, 2, 3, 4, 3, 4, 1, 2, 3, 4, 6, 2 ]
    expect(subject.solution(array)).to eql 3
  end

  it "should return correct solution for ones and zeros" do
    array = [ 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0 ]
    expect(subject.solution(array)).to eql 3
  end

  it "should return correct solution for prime distances" do
    array = [ 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0 ]
    expect(subject.solution(array)).to eql 1
  end

  it "should return correct solution for single element" do
    array = [ 5 ]
    expect(subject.solution(array)).to eql 0
  end

  it "should return correct solution for simple array" do
    array = [0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0]
    expect(subject.solution(array)).to eql 4
  end

  it "should return correct solution for distributed peaks" do
    array = [0, 1, 0, 0, 1, 0, 0, 1, 0]
    expect(subject.solution(array)).to eql 3
  end

  it "get_factors should return all factors" do
    number = 12
    expect(subject.get_factors(number)).to eql [ 1, 2, 3, 4, 6 ].reverse!
  end

  it "get_peaks should return all peaks indexes" do
    array = [ 1, 2, 3, 4, 3, 4, 1, 2, 3, 4, 6, 2 ]
    expect(subject.get_peaks(array)).to eql [ 3, 5, 10 ]
  end

  it "array_to_binary should return correct bin" do
    array = [ 1, 3, 7 ]
    expect(subject.array_to_binary(array)).to eql 0b10001010
  end
end
