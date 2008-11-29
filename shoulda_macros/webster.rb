module Webster 
  module Shoulda
    # Example:
    #  context "Subscription#activation_code" do
    #   setup do
    #     subscription = Factory :subscription
    #     @code = subscription.set_activation_code
    #   end
    #
    #  should_be_webster_word @code 
    #
    def should_be_webster_word(word)
      should "be webster word #{word}" do
        assert_kind_of String, word, 
          "#{word} is not a string but is a #{word.class}."
        assert_equal word, word.downcase, 
          "#{word} is not downcase"
        assert word.length >= 5, 
          "#{word} should be greater than or equal to five characters long " <<
          "but is #{word.length} characters long."
        assert word.length <= 9, 
          "#{word} should be less than or equal to nine characters long " <<
          "but is #{word.length} characters long."
        assert_no_match /\n/, word,
          "#{word} contains a carriage return."
        assert Webster.new.dictionary.include?(word),
          "#{word} should be a word in the Webster dictionary"
      end
    end
    
  end
end

Test::Unit::TestCase.extend(Webster::Shoulda)