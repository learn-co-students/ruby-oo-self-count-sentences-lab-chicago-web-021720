require 'pry'

class String

  def sentence?
    self[self.length - 1] == '.'
  end

  def question?
    self[self.length - 1] == '?'
  end

  def exclamation?
    self[self.length - 1] == '!'
  end

  def count_sentences
    test = self.split(' ')
    num = 0
    test.each do |word|
      if word.sentence? || word.question? || word.exclamation?
        num += 1
      end
    end
    num
  end
end
