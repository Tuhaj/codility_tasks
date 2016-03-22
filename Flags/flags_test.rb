require_relative 'flags'

describe Flags do
  it "should find the number of flags that can be set on current trip" do
    array = [1, 5, 3, 4, 3, 4, 1, 2, 3, 4, 6, 2]
    expect(subject.solution(array)).to eql(3)
  end

  it "should find the number of flags that can be set on current trip with 3 peaks and big first gap" do
    array = [0, 0, 0, 0, 0, 1, 0, 1, 0, 1]
    expect(subject.solution(array)).to eql(2)
  end

  it "should get the number of ones in ranges" do
    bin_array = "10000101000".to_i(2)
    range = 2
    expect( subject.peakes_in_ranges(bin_array, range) ).to eql(3)
  end

  it "should get the number of ones in ranges (2)" do
    bin_array = "10100000".to_i(2)
    range = 2
    expect(subject.peakes_in_ranges(bin_array, range)).to eql(2)
  end

  it "should get peaks in ranges with flag limit" do
    bin_array = "101000001010".to_i(2)
    range = 2
    expect(subject.peakes_in_ranges_with_flag_limit(bin_array, range)).to eql(2)
  end
end
