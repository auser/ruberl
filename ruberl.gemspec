Gem::Specification.new do |s|
  s.name = %q{ruberl}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ari Lerner"]
  s.date = %q{2008-12-04}
  s.description = %q{A quick and dirty module you can include in your classes to give you an easy connection to your gen_tcp erlang server}
  s.email = ["arilerner@mac.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt", "tasks/Manifest.txt", "website/index.txt"]
  s.files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "config/hoe.rb", "config/requirements.rb", "lib/ruberl.rb", "lib/ruberl/version.rb", "ruberl.gemspec", "script/console", "script/destroy", "script/generate", "script/txt2html", "setup.rb", "tasks/Manifest.txt", "tasks/deployment.rake", "tasks/environment.rake", "tasks/github.rake", "tasks/website.rake", "test/test_helper.rb", "test/test_ruberl.rb", "website/index.html", "website/index.txt", "website/javascripts/rounded_corners_lite.inc.js", "website/stylesheets/screen.css", "website/template.html.erb"]
  s.has_rdoc = true
  s.homepage = %q{http://ruberl.rubyforge.org}
  s.post_install_message = %q{Thanks!

For more information on ruberl, see http://ruberl.rubyforge.org

}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{ruberl}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{A quick and dirty module you can include in your classes to give you an easy connection to your gen_tcp erlang server}
  s.test_files = ["test/test_helper.rb", "test/test_ruberl.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_development_dependency(%q<hoe>, [">= 1.8.2"])
    else
      s.add_dependency(%q<hoe>, [">= 1.8.2"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.8.2"])
  end
end