# -*- encoding: utf-8 -*-
VERSION = "0.1.0"

Gem::Specification.new do |spec|
  spec.name          = "motion-browser"
  spec.version       = VERSION
  spec.authors       = ["Jack Dean Watson-Hamblin"]
  spec.email         = ["info@fluffyjack.com"]
  spec.description   = %q{Drop in solution for an in-app browser}
  spec.summary       = %q{If you have content in your application that needs to open up a webpage, you might not want that opened in Safari, so instead drop this in and use the easy solution}
  spec.homepage      = "https://github.com/FluffyJack/motion-browser"
  spec.license       = "MIT"

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
end
