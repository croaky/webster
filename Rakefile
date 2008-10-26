require 'rake'

begin
  require 'rubygems'
  require 'jeweler'
  Jeweler.gemspec = Gem::Specification.new do |s|
    s.name = "webster"
    s.summary = "Generate random short words. Good for human-readable confirmation codes."
    s.email = "dcroak@thoughtbot.com"
    s.homepage = "http://github.com/dancroak/webster"
    s.description = "Generate random short words. Good for human-readable confirmation codes."
    s.authors = ["Dan Croak"]
    s.files =  FileList["[A-Z]*", "{lib,test}/**/*"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

