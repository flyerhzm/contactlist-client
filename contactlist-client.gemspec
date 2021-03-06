# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{contactlist-client}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Richard Huang"]
  s.date = %q{2010-06-02}
  s.description = %q{The contactlist-client gem is a ruby client to contactlist service which retrieves contact list of email(hotmail, gmail, yahoo, sohu, sina, 163, 126, tom, yeah, 189 and 139) and im(msn)}
  s.email = %q{flyerhzm@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.textile"
  ]
  s.files = [
    ".document",
     "LICENSE",
     "README.textile",
     "Rakefile",
     "VERSION",
     "contactlist-client.gemspec",
     "lib/contactlist-client.rb",
     "lib/contactlist/client.rb",
     "test/contactlist-client_test.rb",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/flyerhzm/contactlist-client}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{The contactlist-client gem is a ruby client to contactlist service which retrieves contact list of email(hotmail, gmail, yahoo, sohu, sina, 163, 126, tom, yeah, 189 and 139) and im(msn)}
  s.test_files = [
    "test/test_helper.rb",
     "test/contactlist-client_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

