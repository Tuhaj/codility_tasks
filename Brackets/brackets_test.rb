require_relative 'brackets'

describe Brackets do
  it 'should return' do
    string = "{[()()]}"
    expect(subject.solution(string)).to eql 1
  end
end
