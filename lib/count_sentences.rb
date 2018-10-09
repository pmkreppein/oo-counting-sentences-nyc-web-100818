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
  sentence_array = Array.new 
  sentence_array << self.split(/["']?[A-Z][^.?!]+((?![.?!]['"]?\s["']?[A-Z][^.?!]).)+[.?!'"]+/g)
    sentence_array.size
  end
end