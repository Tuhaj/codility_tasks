require_relative 'tape_equilibrium'

describe TapeEquilibrium do
  it "should be return smallest difference between parts" do
    TEST_ARRAY = [3, 1, 2, 4, 3]
    expect(TapeEquilibrium.new.solution(TEST_ARRAY)).to eql(1)
  end

  it "#difference_after_split counts absolute difference" do
    TEST_ARRAY = [3, 1, 2, 4, 3]
    expect(subject.difference_after_split(TEST_ARRAY, 1)).to eql(7)
    expect(subject.difference_after_split(TEST_ARRAY, 2)).to eql(5)
    expect(subject.difference_after_split(TEST_ARRAY, 3)).to eql(1)
    expect(subject.difference_after_split(TEST_ARRAY, 4)).to eql(7)
  end
end
