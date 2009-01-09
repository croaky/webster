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

spec = Gem::Specification.new do |s|
  s.name = "webster"
  s.version = "0.4.8"
  s.summary = "Generate random short words. Good for human-readable confirmation codes."
  s.email = "dcroak@thoughtbot.com"
  s.homepage = "http://github.com/dancroak/webster"
  s.description = "Generate random short words. Good for human-readable confirmation codes."
  s.authors = ["Dan Croak", "Jared Carroll", "thoughtbot"]
  s.files = FileList["[A-Z]*", "{lib,shoulda_macros}/**/*"]
end

desc "Generate a gemspec file"
task :gemspec do
  File.open("#{spec.name}.gemspec", 'w') do |f|
    f.write spec.to_yaml
  end
end
