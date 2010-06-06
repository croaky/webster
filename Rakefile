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

require 'jeweler'

Jeweler::Tasks.new do |gem|
  gem.name = "webster"
  gem.summary = "Generate random short words. Good for human-readable confirmation codes."
  gem.email = "dcroak@thoughtbot.com"
  gem.homepage = "http://github.com/dancroak/webster"
  gem.description = "Generate random short words. Good for human-readable confirmation codes."
  gem.authors = ["Dan Croak", "Jared Carroll", "thoughtbot"]
  gem.files = FileList["[A-Z]*", "{lib,shoulda_macros}/**/*"]
end

Jeweler::GemcutterTasks.new
