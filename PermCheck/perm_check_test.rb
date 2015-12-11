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

end
