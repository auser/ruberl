require 'config/requirements'
require 'config/hoe' # setup Hoe + all gem configuration

Dir['tasks/**/*.rake'].each { |rake| load rake }

desc "Generate a new manifest and a new gem"
task :build_local_gem => [:clean_tmp, :clean_pkg, :"manifest:refresh", :package]

desc "Clean tmp directory"
task :clean_tmp do |t|
  %x[rm #{File.dirname(__FILE__)}/Manifest.txt; touch #{File.dirname(__FILE__)}/Manifest.txt]
  %w(logs tmp).each do |dir|
    FileUtils.rm_rf("#{File.dirname(__FILE__)}/#{dir}") if ::File.exists?("#{File.dirname(__FILE__)}/#{dir}")
  end
end
desc "Remove the pkg directory"
task :clean_pkg do |t|
  %w(pkg).each do |dir|
    FileUtils.rm_rf("#{File.dirname(__FILE__)}/#{dir}") if ::File.exists?("#{File.dirname(__FILE__)}/#{dir}")
  end
end

desc "Release to github"
task :github_release => [:clean_tmp, :clean_pkg, :"manifest:refresh", :package] do
  res = %x[rake debug_gem]
  res = res.split("\n")[1..-1].join("\n")
  ::File.open("#{GEM_NAME.downcase}.gemspec", "w+") do |f|
    f << res
  end
end

desc "Generate gemspec"
task :gemspec  => [:clean_tmp, :"manifest:refresh", :build_local_gem] do |t|
  res = %x[rake debug_gem]
  res = res.split("\n")[1..-1].join("\n")
  ::File.open("#{GEM_NAME.downcase}.gemspec", "w+") do |f|
    f << res
  end
end

desc "Generate gemspec for github"
task :gh => [:github_release] do
  filepath = ::File.join(::File.dirname(__FILE__), "#{GEM_NAME}.gemspec")
  data = open(filepath).read
  spec = eval("$SAFE = 3\n#{data}")
  yml = YAML.dump spec
  File.open(filepath, "w+") do |f|
    f << yml
  end
end