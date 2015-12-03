require_relative 'perm_missing_element'

describe PermMissingElement do
  it "should return missing element" do
    array = [2, 3, 1, 5]
    expect(subject.solution(array)).to eql(4)
  end
end
