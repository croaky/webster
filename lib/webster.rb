module Webster

  DICTIONARY = File.open(File.join(File.dirname(__FILE__), 'words')) do |file|
    file.readlines.collect {|each| each.chomp}
  end
  
  def random
    DICTIONARY[rand(DICTIONARY.size)]
  end

end
