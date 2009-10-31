require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "contactlist-client"
    gem.summary = %Q{The contactlist-client gem is a ruby client to contactlist service which retrieves contact list of email(hotmail, gmail, yahoo, sohu, sina, 163, 126, tom, yeah, 189 and 139) and im(msn)}
    gem.description = %Q{The contactlist-client gem is a ruby client to contactlist service which retrieves contact list of email(hotmail, gmail, yahoo, sohu, sina, 163, 126, tom, yeah, 189 and 139) and im(msn)}
    gem.email = "flyerhzm@gmail.com"
    gem.homepage = "http://github.com/flyerhzm/contactlist-client"
    gem.authors = ["Richard Huang"]
    gem.files.exclude '.gitignore'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/*_test.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION')
    version = File.read('VERSION')
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "contactlist-client #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
