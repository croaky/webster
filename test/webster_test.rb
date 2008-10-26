require 'test/unit'
require 'rubygems'
require 'shoulda'
require 'quietbacktrace'
require 'redgreen'
require File.join(File.dirname(__FILE__), "..", "lib", "webster")

class WebsterTest < Test::Unit::TestCase

  context "#dictionary" do
    setup do
      @webster = Webster.new
      @dictionary = @webster.dictionary
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
        assert !@dictionary.include?(word), "The blacklist word, #{word}, is in the dictionary."
      end
    end
  end

  context "#random" do
    setup do
      @webster = Webster.new
      @random = @webster.random
    end

    should "be a word" do
      assert_kind_of String, @random
    end

    should "be downcase" do
      assert_equal @random, @random.downcase
    end

    should "be greater than or equal to five characters long" do
      assert @random.length >= 5, "#{@random.inspect}, length: #{@random.length}"
    end

    should "be less than or equal to nine characters long" do
      assert @random.length <= 9, "#{@random.inspect}, length: #{@random.length}"
    end

    should "not contain a carriage return" do
      assert_no_match /\n/, @random
    end

    should "be a word in the dictionary" do
      assert @webster.dictionary.include?(@random)
    end
  end

end
