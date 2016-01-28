require_relative 'nesting'

describe Nesting do
  it 'should return true for properly nested' do
    string = "(()(())())"
    expect(subject.solution(string)).to eql(1)
  end

  it 'should return false for wrong nested' do
    string = "())"
    expect(subject.solution(string)).to eql(0)
  end

  it 'should return false for wrong nested, but with the right number of openings and closings' do
    string = '()(()()(((()())(()()))'
    expect(subject.solution(string)).to eql(0)
  end

end
