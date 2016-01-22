require_relative 'brackets'

describe Brackets do
  it 'should return' do
    string = "{[()()]}"
    expect(subject.solution(string)).to eql 1
  end

  it 'should return 1 for basic string example with one bracket' do
    string = "{}"
    expect(subject.solution(string)).to eql 1
  end

  it 'should return 0 for basic string example with broken bracket' do
    string = "{"
    expect(subject.solution(string)).to eql 0
  end

  it 'should return 0 for changing brackets' do
    string = "({)}"
    expect(subject.solution(string)).to eql 0
  end

  it 'should return 0 for obverse brackets' do
    string = ")("
    expect(subject.solution(string)).to eql 0
  end

  it 'should return 1 for no brackets' do
    string = ""
    expect(subject.solution(string)).to eql 1
  end
end
