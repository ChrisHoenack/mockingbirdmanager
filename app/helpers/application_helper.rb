module ApplicationHelper
    
  def remove_unwanted_words(string)
    bad_words = ["less than", "about", "over", "almost"]
    
    bad_words.each do |bad|
      string.gsub!(bad + " ", '')
    end
    
    return string
  end
    
end
