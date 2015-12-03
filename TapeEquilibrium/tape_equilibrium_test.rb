require_relative 'tape_equilibrium'

describe TapeEquilibrium do
  it "should return smallest difference between parts" do
    TEST_ARRAY = [3, 1, 2, 4, 3]
    expect(TapeEquilibrium.new.solution(TEST_ARRAY)).to eql(1)
  end

  it "should return smallest difference between parts with negative numbers" do
    TEST_ARRAY = [4, -5, 20, 1, 0]
    expect(TapeEquilibrium.new.solution(TEST_ARRAY)).to eql(12)
  end

  it "should return smallest difference between parts with big negative numbers" do
    TEST_ARRAY = [100, 1, 1, 1, -10000]
    expect(TapeEquilibrium.new.solution(TEST_ARRAY)).to eql(9897)
  end
end
