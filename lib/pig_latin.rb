require "pig_latin/version"

module PigLatin
  # Your code goes here...
  def self.check_if_pl(word)
    if /\A[aeiou]/i.match(word) && /(ay)\z/i.match(word)
      true
    else
      false
    end
  end

  def self.translate(word)
    if self.check_if_pl(word)
      word
    elsif /\A[aeiou]/i.match(word)
      word + "way"
    elsif  /\A[^aeiou]/i.match(word) && /[aeiou]/i.match(word)
      letters = /[^aeiou]+/i.match(word)
      word.slice!(0, letters.to_s.length)
      word + letters.to_s + "ay"
    else
      letters = /[^y]+/i.match(word)
      word.slice!(0, letters.to_s.length)
      word + letters.to_s + "ay"
    end
  end
end
