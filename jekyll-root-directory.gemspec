# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = "jekyll-root-directory"
  spec.version       = "1.0.0"
  spec.date          = "2019-10-30"
  spec.authors       = ["Angus Johnston"]
  spec.email         = ["admin+rubygems@codeanimu.net"]


  spec.summary       = "Adds a _root directory to Jekyll."
  spec.description   = "Adds a _root directory to Jekyll, allowing you to move static root site files away from the root jekyll directory."
  spec.homepage      = "https://github.com/DakuTree/jekyll-root-directory"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"]    = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"]   = spec.homepage + "/blob/master/CHANGELOG.md"

  spec.files = ["lib/jekyll-root-directory.rb"]

  spec.add_runtime_dependency "jekyll", ">= 4.0", "< 5.0"
end
