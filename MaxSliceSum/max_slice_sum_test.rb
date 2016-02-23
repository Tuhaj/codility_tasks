require_relative "max_slice_sum"

describe MaxSliceSum do
  it "returns correct solution" do
    array = [3, 2, -6, 4, 0]
    expect(subject.solution(array)).to eql 5
  end
end
