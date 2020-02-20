require 'pry'

class String

  def sentence?
    statement = self

    if statement.end_with?(".")
      return true 
    else 
      return false 
    end 
  end

  def question?
    statement = self

    if statement.end_with?("?")
      return true 
    else 
      return false 
    end 

  end

  def exclamation?
    statement = self

    if statement.end_with?("!")
      return true 
    else 
      return false 
    end 
  end

  
  def count_sentences
    sents = self.split(/\.\s|\!\s|\?\s/)
    sents.length
  end
end 