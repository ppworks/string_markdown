# -*- encoding: utf-8 -*-
require File.expand_path('../lib/string_markdown/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["ppworks"]
  gem.email         = ["koshikawa@ppworks.jp"]
  gem.description   = %q{Add String#to_md support}
  gem.summary       = %q{Add String#to_md}
  gem.homepage      = "https://github.com/ppworks/string_markdown"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "string_markdown"
  gem.require_paths = ["lib"]
  gem.version       = StringMarkdown::VERSION
  
  gem.add_dependency 'redcarpet'
  gem.add_dependency 'pygments.rb'
  gem.add_dependency 'rubypython', '0.5.1'
end
