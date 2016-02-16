require_relative "max_double_slice_sum"

describe MaxDoubleSliceSum do
  # it "returns max double slice" do
  #   array = [3, 2, 6, -1, 4, 5, -1, 2]
  #   expect(subject.solution(array)).to eql(17)
  # end

  it "#double_slice returns correct answer 1" do
    array = [3, 2, 6, -1, 4, 5, -1, 2]
    expect(subject.double_slice(array, 0, 3, 6)).to eql(17)
  end

  it "#double_slice returns correct answer 2" do
    array = [3, 2, 6, -1, 4, 5, -1, 2]
    expect(subject.double_slice(array, 0, 3, 7)).to eql(16)
  end

  it "#double_slice returns correct answer 3" do
    array = [3, 2, 6, -1, 4, 5, -1, 2]
    expect(subject.double_slice(array, 3, 4, 5)).to eql(0)
  end

  it "#max_slice returns the biggest slice" do
    array = [3, 2, 6, -1, 4, 5, -1, 2]
    expect(subject.max_slice(array)).to eql(20)
  end

  it "#max_slice returns the biggest slice for one number slice" do
    array = [1, 2, -3, 4, -10]
    expect(subject.max_slice(array)).to eql(4)
  end
end
