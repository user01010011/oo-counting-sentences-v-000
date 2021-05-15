require 'pry'

class String

  def sentence?
    self.end_with?(".") true : false
  end

  def question?
    self.end_with?("?") true : false
  end

  def exclamation?
    self.end_with("!") true : false
  end

  def count_sentences
    self.split(/\.|\?|\!/).delete_if {|w| w.count < 2}.count
    if count == 0
      zero
    end
    count
  end

end
