require 'test/unit'
require 'rubygems'
require 'shoulda'
require 'quietbacktrace'
require 'redgreen'
require File.join(File.dirname(__FILE__), "..", "lib", "webster")

class WebsterTest < Test::Unit::TestCase

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
