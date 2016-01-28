require_relative 'fish'

describe Fish do
  it 'should return array' do
    a = [4,3,2,1,5]
    b = [0, 1, 0, 0, 0]
    expect(subject.solution(a,b)).to eql(2)
  end

  describe '#removes_all_smaller_form_tail' do
    it 'should remove all elements smaller from top of the array' do
      array = [1,4,8,6,2,0]
      expect(subject.removes_all_smaller_form_tail(array, 7)).to eql([1,4,8])
    end
  end
end
