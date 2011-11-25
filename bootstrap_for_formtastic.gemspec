# -*- encoding: utf-8 -*-
require File.expand_path('../lib/bootstrap_for_formtastic/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Sairam Kunala"]
  gem.email         = ["sairam@crypsis.net"]
  gem.description   = %q{TODO: Write a gem description}
  gem.homepage      = "https://github.com/crypsis/bootstrap_for_formtastic"
  gem.summary       = %q{Bootstrap CSS for Formtastic forms}
  gem.description   = %q{The default Bootstrap CSS does not work well with the Formtastic forms v2.0.x . We wrote CSS to fix it. Check the README for more details}

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "bootstrap_for_formtastic"
  gem.require_paths = ["lib"]

  gem.version       = BootstrapForFormtastic::VERSION
  gem.add_dependency('rails', "~> 3.0")
  gem.add_dependency('formtastic', "~> 2.0.1")

end
