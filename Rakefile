require 'rake'
require 'rake/testtask'
require 'date'

test_files_pattern = 'test/**/*_test.rb'
Rake::TestTask.new do |t|
  t.libs << 'lib'
  t.pattern = test_files_pattern
  t.verbose = false
end

desc "Run the test suite"
task :default => :test

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
    s.files = FileList["[A-Z]*", "{lib,test}/**/*"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

