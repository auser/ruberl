--- !ruby/object:Gem::Specification 
name: ruberl
version: !ruby/object:Gem::Version 
  version: 0.0.2
platform: ruby
authors: 
- Ari Lerner
autorequire: 
bindir: bin
cert_chain: []

date: 2008-12-04 00:00:00 -08:00
default_executable: 
dependencies: 
- !ruby/object:Gem::Dependency 
  name: hoe
  type: :runtime
  version_requirement: 
  version_requirements: !ruby/object:Gem::Requirement 
    requirements: 
    - - ">="
      - !ruby/object:Gem::Version 
        version: 1.8.2
    version: 
description: A quick and dirty module you can include in your classes to give you an easy connection to your gen_tcp erlang server
email: 
- arilerner@mac.com
executables: []

extensions: []

extra_rdoc_files: 
- History.txt
- Manifest.txt
- PostInstall.txt
- README.txt
- website/index.txt
files: 
- History.txt
- Manifest.txt
- PostInstall.txt
- README.txt
- Rakefile
- config/hoe.rb
- config/requirements.rb
- lib/ruberl.rb
- lib/ruberl/base.rb
- lib/ruberl/version.rb
- ruberl.gemspec
- script/console
- script/destroy
- script/generate
- script/txt2html
- setup.rb
- spec/base_spec.rb
- spec/spec_helper.rb
- tasks/deployment.rake
- tasks/environment.rake
- tasks/website.rake
- test/test_helper.rb
- test/test_ruberl.rb
- website/index.html
- website/index.txt
- website/javascripts/rounded_corners_lite.inc.js
- website/stylesheets/screen.css
- website/template.html.erb
has_rdoc: true
homepage: http://ruberl.rubyforge.org
post_install_message: |+
  Thanks and check out the blog post http://blog.xnot.org/2008/12/04/ruberl-erlang-to-rubygem/ for more information and usage
  
  For more information on ruberl, see http://ruberl.rubyforge.org
  
rdoc_options: 
- --main
- README.txt
require_paths: 
- lib
required_ruby_version: !ruby/object:Gem::Requirement 
  requirements: 
  - - ">="
    - !ruby/object:Gem::Version 
      version: "0"
  version: 
required_rubygems_version: !ruby/object:Gem::Requirement 
  requirements: 
  - - ">="
    - !ruby/object:Gem::Version 
      version: "0"
  version: 
requirements: []

rubyforge_project: ruberl
rubygems_version: 1.2.0
signing_key: 
specification_version: 2
summary: A quick and dirty module you can include in your classes to give you an easy connection to your gen_tcp erlang server
test_files: 
- test/test_helper.rb
- test/test_ruberl.rb
