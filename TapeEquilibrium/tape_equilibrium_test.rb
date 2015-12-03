require_relative 'tape_equilibrium'

describe TapeEquilibrium do
  it "should return smallest difference between parts" do
    array = [3, 1, 2, 4, 3]
    expect(TapeEquilibrium.new.solution(array)).to eql(1)
  end

  it "should return smallest difference between parts with negative numbers" do
    array = [4, -5, 20, 1, 0]
    expect(TapeEquilibrium.new.solution(array)).to eql(12)
  end

  it "should return smallest difference between parts with big negative numbers" do
    array = [100, 1, 1, 1, -10000]
    expect(TapeEquilibrium.new.solution(array)).to eql(10097)
  end

  it "should return correct answer for double" do
    array = [-1000, 1000]
    expect(TapeEquilibrium.new.solution(array)).to eql(2000)
  end

  it "should return correct answer for small array" do
    array =  [-10, -20, -30, -40, 100]
    expect(TapeEquilibrium.new.solution(array)).to eql(20)
  end
end
