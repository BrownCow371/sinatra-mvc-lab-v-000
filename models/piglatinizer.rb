class PigLatinizer

  def piglatinize(phrase)
    phrase_array = phrase.split(" ")
    phrase_array.collect do |word|
      if word[0].match(/[aeiou]/)
        word+"way"
      elsif word[-2..-1] =="ay"
        "ay"+word
      else
        word[1..-1]+word[0]+"ay"
      end.join(" ")
      binding.pry
    end
  end
end
