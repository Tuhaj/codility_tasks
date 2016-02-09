require_relative 'equi_leader'

describe EquiLeader do
  it 'should find equi leader' do
    array = [4, 3, 4, 4, 4, 2]
    expect(subject.solution(array)).to eql(2)
  end
end
