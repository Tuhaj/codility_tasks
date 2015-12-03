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
    expect(TapeEquilibrium.new.solution(array)).to eql(9897)
  end

  it "should return correct answer for double" do
    array = [-1000, 1000]
    expect(TapeEquilibrium.new.solution(array)).to eql(2000)
  end
end
