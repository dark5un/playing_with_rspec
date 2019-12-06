class First
  def say
    print "Hello"
  end

  def other
    1
  end
end

describe First do
  let(:first){First.new}
  it "print hello" do
    expect do
      first.say
    end.to output('Hello').to_stdout
  end

  it "show 1" do
    expect(first.other).to eq(1)
  end
end