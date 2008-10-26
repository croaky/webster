# require "open_safely"

class Webster

  DICTIONARY_FILE = File.join(File.dirname(__FILE__), "words")

  attr_accessor :dictionary
  
  def initialize
    @dictionary = []
    File.open(DICTIONARY_FILE) do |file|
      @dictionary = file.readlines.collect { |word| word.chomp }
    end
  end

  def random
    dictionary[rand(dictionary.size)]
  end

end
