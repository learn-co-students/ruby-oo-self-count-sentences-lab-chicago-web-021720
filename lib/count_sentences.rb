require 'pry'

class String
  attr_accessor :total_sentences, :period_count, :question_count, :exclamation_count

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
    total=0
    array=self.split(' ')
    for i in array 
      if i.question? == true
        total+=1
      elsif i.exclamation? == true
        total+=1
      elsif i.sentence? == true
        total+=1
      end
    end
      total
  end
end
