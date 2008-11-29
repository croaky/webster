Gem::Specification.new do |s|
  s.name = %q{webster}
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dan Croak"]
  s.date = %q{2008-11-28}
  s.description = %q{Generate random short words. Good for human-readable confirmation codes.}
  s.email = %q{dcroak@thoughtbot.com}
  s.files = ["Rakefile", "README.textile", "VERSION.yml", "lib/webster.rb", "lib/words", "test/webster_test.rb", "shoulda_macros/webster.rb"]
  s.homepage = %q{http://github.com/dancroak/webster}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Generate random short words. Good for human-readable confirmation codes.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
    else
    end
  else
  end
end
