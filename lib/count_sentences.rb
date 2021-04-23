require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentences = self.split(/\.|\?|\!/)
    sentences.delete_if { |string| string.length < 2 }
    sentences.length
  end
end
