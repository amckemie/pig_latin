require "pig_latin/version"

module PigLatin
  # Your code goes here...
  def self.check_if_pl(word)
    if /\A[aeiou]/.match(word) && /(ay)\z/.match(word)
      true
    else
      false
    end
  end
end
