require 'spec_helper'
require 'pry-debugger'

describe "pig_latin" do
  describe 'check_if_pl' do
    it "returns true if inputted word is pig latin" do
      expect(PigLatin.check_if_pl("eggway")).to eq(true)
    end

    it "returns false if inputted word is not pig latin" do
      expect(PigLatin.check_if_pl("yellow")).to eq(false)
    end
  end

  describe "translate" do
    it "returns the inputted word if it is already pig latin" do
      expect(PigLatin.translate("eggway")).to eq("eggway")
    end

    it "adds 'way' to the end of the word if it begins with a vowel" do
      expect(PigLatin.translate("egg")).to eq("eggway")
    end

    it "move the consonants until the first vowel to the end of the word (includes when y is first letter)" do
      expect(PigLatin.translate("yellow")).to eq("ellowyay")
      expect(PigLatin.translate("glove")).to eq("oveglay")
    end

    it "recognizes y as a vowel when it is the first 'vowel' the word has and translates appropriately" do
      expect(PigLatin.translate("rhythm")).to eq("ythmrhay")
    end
  end
end
