require 'test/unit'
require 'rubygems'
require 'shoulda'
require File.join(File.dirname(__FILE__), '..', 'shoulda_macros', 'webster')
require File.join(File.dirname(__FILE__), "..", "lib", "webster")

class WebsterTest < Test::Unit::TestCase

  context "#dictionary" do
    setup do
      @dictionary = Webster::DICTIONARY
      @blacklist = %w(bastaard bastard bastardly bastardy bedamn bitch damnable damnably damnation
        damnatory damned damner damnify damnii damning damningly damnonii damnous damnously 
        shita shitepoke shother shittah shittim undamned undamning undamn
        assman whore whoredom whorelike whoreship whoreson whorish whorishly
        hemipenis penis penistone vagina vaginal vaginant vaginate vaginated
        vagina vaginal vaginant vaginate vaginated dildo dillweed dingus dinkum
        swordick pussy anusim anusvara rectum dick nipple clitoria clitoris clitorism)
    end

    should "not contain offensive words or offensive-sounding words" do
      @blacklist.each do |word|
        assert ! @dictionary.include?(word), "The blacklist word, #{word}, is in the dictionary."
      end
    end
  end

  context "#random_word" do
    setup do
      webster = Webster.new
      @word = webster.random_word
    end

    should_be_webster_word '@word'
  end

end
