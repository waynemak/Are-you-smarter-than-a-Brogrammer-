source 'http://rubygems.org'

gem 'rails', '3.0.19'

gem 'haml-rails'
gem 'jquery-rails'

gem 'dalli'
gem 'omniauth'

gem 'thin'

group :production do
  gem 'pg'
end

group :development,:test do
  # debugging gems
  gem 'ruby-debug', :platform => :mri_18
  gem 'ruby-debug19', :platform => :mri_19
  
  # Unit/Behavior testing gems  
  gem "rspec-rails", ">= 2.4.1"
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'

  gem 'guard'
  gem 'guard-rspec'

  gem 'heroku'

  gem 'sqlite3'
end

