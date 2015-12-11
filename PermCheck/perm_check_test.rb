require_relative 'perm_check'

describe PermCheck do
  it "should return 1 for permutation" do
    array = [4, 1, 3, 2]
    expect(subject.solution(array)).to eql(1)
  end

  it "should return 0 for non-permutation" do
    array = [4, 1, 3]
    expect(subject.solution(array)).to eql(0)
  end

  it "should have no problems with allocating memory" do
    array = [1000000000]
    expect(subject.solution(array)).to eql(0)
  end


  it "should give right answer for double" do
    array = [1, 1]
    expect(subject.solution(array)).to eql(0)
  end
end
