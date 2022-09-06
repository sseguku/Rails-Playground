# frozen_string_literal: true

# defines the last word length
class LastWordLength
  def last_word_length(sentence)
    words = sentence.split
    words[words.size - 1].to_s.length
  end
end

describe LastWordLength do
  before(:each) do
    @lolw = LastWordLength.new
  end
  it " String - Hello World should return 5" do
    expect(@lolw.last_word_length("Hello World")).to eq(5)
  end
  it "String - fly me to the moon should return 4" do
    expect(@lolw.last_word_length("fly me to the moon")).to eq(4)
  end
  it " String - luffy is still joyboy should return 6" do
    expect(@lolw.last_word_length("luffy is still joyboy")).to eq(6)
  end
end
