require_relative 'max_product_of_three'

describe MaxProductOfThree do
  it "should find the maximal product of any triplet" do
    array = [-3, 1, 2, -2, 5, 6]
    expect(subject.solution(array)).to eql(60)
  end

  it "should find the maximal product of a small triplet" do
    array = [1, 2, 3]
    expect(subject.solution(array)).to eql(6)
  end

  it "should find the maximal product of triplet with zero" do
    array = [1, 0, 3, 1]
    expect(subject.solution(array)).to eql(3)
  end
end
