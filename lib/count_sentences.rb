require 'pry'


class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    potential_sentences = self.split(/\.|\?|\!/)
    potential_sentences.filter{ |potential_sentence| potential_sentence.length > 1}.length
  end
end
