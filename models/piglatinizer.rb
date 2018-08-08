class PigLatinizer

  def initialize(phrase = "")
    @phrase = phrase
  end

  def piglatinize
    phrase_array = @phrase.split(" ")
    phrase_array.collect do |word|
      if word.start_with?(/[aeiou]/)
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
