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
    it "adds 'ay' to the end of a word" do
    end

    # it "adds 'way' to the end of the word if it begins with a vowel" do
    # end

  end
end
