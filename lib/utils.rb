module Utils
  def urlify(name)
    name.downcase.gsub(/\(|\)/, " ").strip.gsub(/\s+/, "_")
  end
end

class String
  def rreplace(str1, str2)
    gsub(str1, str2)
  end
  
  # DICTIONARY_UPCASE = ["3DM", "3D", "Motion"]
  # 
  # def dictionary_upcase
  #   DICTIONARY_UPCASE.map(&:downcase)
  # end
  # 
  # def upcase_selected
  #   words = self.split(" ")
  #   words_upcased = []
  #   for word in words
  #     words_upcased << if dictionary_upcase.include? word.downcase
  #       word.upcase
  #     else
  #       word
  #     end
  #   end
  #   words_upcased.join(" ")
  # end
  
  
  def humanize
    rreplace("_", " ")#.upcase_selected
  end
end