require_relative 'genomic_range_query'

describe GenomicRangeQuery do

  it "should return expected result" do
    s = "CAGCCTA"
    p = [2, 5, 0]
    q = [4, 5, 6]
    expect(subject.solution(s, p, q)).to eql( [2, 4, 1])
  end
end
