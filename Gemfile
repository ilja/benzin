source 'http://rubygems.org'

gem 'rails', '3.0.0.rc'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3-ruby', :require => 'sqlite3'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

gem 'devise'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri', '1.4.1'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

#gem "rspec",">=2.0.0.beta.5", :group => :test 

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do
#   gem 'webrat'
  gem 'capybara'
  gem "rspec-rails",">=2.0.0.beta.5" 
  #gem 'capybara', :git => 'git://github.com/jnicklas/capybara.git' 
  gem 'database_cleaner', :git => 'git://github.com/bmabey/database_cleaner.git' 
  gem 'cucumber-rails', :git => 'git://github.com/aslakhellesoy/cucumber-rails.git' 
  gem 'spork'
  gem 'launchy'    # So you can do Then show me the page
end
