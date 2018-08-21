lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_social_products/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_social_products'
  s.version     = SpreeSocialProducts.version
  s.summary     = 'Adds social network sharing to product pages'
  s.required_ruby_version = '>= 2.1.0'

  s.author    = 'John Dyer'
  s.email     = 'jdyer@spreecommerce.com'
  s.homepage  = 'http://www.spreecommerce.com'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  # s.add_runtime_dependency 'spree_core', '~> 3.1.0.beta'
  s.add_runtime_dependency 'spree_core', '>= 3.1.0', '< 4.0'
  s.add_runtime_dependency 'spree_auth_devise', '>= 3.1.0', '< 4.0'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sass-rails'
  # s.add_development_dependency 'sqlite3', '~> 1.3.10'
  s.add_development_dependency 'simplecov', '~> 0.9.0'
  s.add_development_dependency 'pry-rails', '>= 0.3.0'
  s.add_development_dependency 'rubocop', '>= 0.24.1'
end
