class Webster

  DICTIONARY_FILE = File.join(File.dirname(__FILE__), "words")

  attr_accessor :dictionary
  
  def initialize
    @dictionary = IO.readlines DICTIONARY_FILE
  end

  def random
    dictionary[rand(dictionary.size)].chomp
  end

end
