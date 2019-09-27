# encoding: UTF-8
$:.push File.expand_path('../lib', __FILE__)
require 'solidus_image_editor/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_image_editor'
  s.version     = SolidusImageEditor::VERSION
  s.summary     = 'On demand Product'
  s.description = 'This extension give user a feature to personalize your product'
  s.license     = 'BSD-3-Clause'

  s.author    = 'Sumit Sharma'
  s.email     = 'forever.sumitsharma@gmail.com'
  # s.homepage  = 'http://www.example.com'

  s.files = Dir["{app,config,db,lib}/**/*", 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'solidus_core' # Set Solidus version

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'rubocop-rspec'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'gem-release'
end
