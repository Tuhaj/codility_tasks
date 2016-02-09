require_relative 'equi_leader'

describe EquiLeader do
  it 'should find equi leader' do
    array = [4, 3, 4, 4, 4, 2]
    expect(subject.solution(array)).to eql(2)
  end

  it 'should find equi leader if cut changes the leader' do
    # it looks that the equi leader must cannot be more than one number
    array = [1, 2, 2, 1, 1, 1, 1]
    expect(subject.solution(array)).to eql(3)
  end

  it 'should find 0 equi leaders if non present' do
    array = [1,2,3]
    expect(subject.solution(array)).to eql(0)
  end
end
